"""svc_table.py OUT.csv: tabulate the IPC command header of every svc 0x32 wrapper in lib/ctrsvc.
Header = cmd_id<<16 | normal_params<<6 | translate_params. Callers come from the call-graph ranker."""
import re, sys, csv, struct, tomllib, collections
sys.path.insert(0, '.')
from ctrdecomp import config as c, callgraph as cg
from capstone import *
cfg = c.load(); code = cfg.code(); md = Cs(CS_ARCH_ARM, CS_MODE_ARM)
funcs = tomllib.load(open('functions.toml', 'rb'))['function']
try: graph = cg.build(cfg)  # may not exist; fall back to a raw BL scan
except Exception: graph = None
callers = collections.Counter()
for t in range(0, len(code) - 3, 4):
    w = struct.unpack_from('<I', code, t)[0]
    if (w >> 24) & 0xf == 0xb and (w >> 28) == 0xe:
        off = w & 0xffffff
        if off & 0x800000: off -= 1 << 24
        callers[t + 8 + off * 4] += 1
# handle global -> service, from the init function that passes the service-name string (see technical.md section 8 item 7)
SERVICE = {'008aab70': 'cam:u', '008aaeb4': 'y2r:u', '008b8778': 'cecd:u', '008b877c': 'cecd:s', '008b7d48': 'mic:u',
           '008b85f4': 'srv:pm', '008bb4e0': 'srv:pm', '008b8818': 'ndm:u', '008bf998': 'ir:USER',
           '008b8764': 'ac:i', '008ab858': 'ac (copy of the ac:i handle)',
           '008b7ccc': 'frd:u', '008b8790': 'frd:a', '008ab930': 'APT:U',
           '008b850c': 'ptm:u', '008b851c': 'ptm:s', '008b8514': 'ptm:sysm', '008b8510': 'ptm:play', '008b8518': 'ptm:gets',
           '008b7d20': 'hid:USER (hid:SPVR shares the init)', '008bb628': 'cfg:i', '008bb62c': 'cfg:i (copy)', '008b878c': 'cfg:i (copy)'}
# stubs that take a session-handle pointer (no global): attributed by the service init their address cluster follows and by
# command-id range (fs:USER ids 0x8xx; dsp ids < 0x40; nwm::UDS and boss follow their init strings). Inferred, so tagged.
def session_service(off, cmd):
    if 0x4ed000 <= off < 0x4f0000 or (off < 0x400000 and 0x800 <= cmd < 0x900): return 'fs:USER (session, inferred)'
    if 0x501000 <= off < 0x502000 or (off < 0x400000 and cmd < 0x40): return 'dsp::DSP (session, inferred)'
    if 0x51a000 <= off < 0x51c000: return 'nwm::UDS (session, inferred)'
    if 0x51f000 <= off < 0x523000: return 'boss (session, inferred)'
    return ''
# fs:USER command names (3dbrew table; verified by header shape against the stubs: id 0x802 OpenFile = 7 normal/2 translate,
# 0x804 DeleteFile 5/2, 0x808 CreateFile 8/2, 0x80c OpenArchive 3/2, 0x84c FormatSaveData 9/2, 0x851 CreateExtSaveData 9/2).
# Real id = table position + 0x801 (the table omits the dummy at 0x801); 0x861 is Initialize (1/2), 0x862 SetPriority, 0x863 GetPriority.
FS_NAMES = {0x802 + i: n for i, n in enumerate("OpenFile OpenFileDirectly DeleteFile RenameFile DeleteDirectory DeleteDirectoryRecursively CreateFile CreateDirectory RenameDirectory OpenDirectory OpenArchive ControlArchive CloseArchive Obsoleted_2_0_FormatThisUserSaveData Obsoleted_3_0_CreateSystemSaveData Obsoleted_3_0_DeleteSystemSaveData GetFreeBytes GetCardType GetSdmcArchiveResource GetNandArchiveResource GetSdmcFatfsError IsSdmcDetected IsSdmcWritable GetSdmcCid GetNandCid GetSdmcSpeedInfo GetNandSpeedInfo GetSdmcLog GetNandLog ClearSdmcLog ClearNandLog CardSlotIsInserted CardSlotPowerOn CardSlotPowerOff CardSlotGetCardIFPowerStatus CardNorDirectCommand CardNorDirectCommandWithAddress CardNorDirectRead CardNorDirectReadWithAddress CardNorDirectWrite CardNorDirectWriteWithAddress CardNorDirectRead_4xIO CardNorDirectCpuWriteWithoutVerify CardNorDirectSectorEraseWithoutVerify GetProductInfo GetProgramLaunchInfo Obsoleted_3_0_CreateExtSaveData Obsoleted_3_0_CreateSharedExtSaveData Obsoleted_3_0_ReadExtSaveDataIcon Obsoleted_3_0_EnumerateExtSaveData Obsoleted_3_0_EnumerateSharedExtSaveData Obsoleted_3_0_DeleteExtSaveData Obsoleted_3_0_DeleteSharedExtSaveData SetCardSpiBaudRate SetCardSpiBusMode SendInitializeInfoTo9 GetSpecialContentIndex GetLegacyRomHeader GetLegacyBannerData CheckAuthorityToAccessExtSaveData QueryTotalQuotaSize Obsoleted_3_0_GetExtDataBlockSize AbnegateAccessRight DeleteSdmcRoot DeleteAllExtSaveDataOnNand InitializeCtrFileSystem CreateSeed GetFormatInfo GetLegacyRomHeader2 Obsoleted_2_0_FormatCtrCardUserSaveData GetSdmcCtrRootPath GetArchiveResource ExportIntegrityVerificationSeed ImportIntegrityVerificationSeed FormatSaveData GetLegacySubBannerData UpdateSha256Context ReadSpecialFile GetSpecialFileSize CreateExtSaveData DeleteExtSaveData ReadExtSaveDataIcon GetExtDataBlockSize EnumerateExtSaveData CreateSystemSaveData DeleteSystemSaveData StartDeviceMoveAsSource StartDeviceMoveAsDestination SetArchivePriority GetArchivePriority SetCtrCardLatencyParameter SetFsCompatibilityInfo ResetCardCompatibilityParameter SwitchCleanupInvalidSaveData EnumerateSystemSaveData InitializeWithSdkVersion SetPriority GetPriority".split()[:96])}
FS_NAMES.update({0x861: 'Initialize', 0x862: 'SetPriority', 0x863: 'GetPriority'})
FS_FILE = {0x802: 'Read', 0x803: 'Write', 0x804: 'GetSize', 0x805: 'SetSize', 0x806: 'GetAttributes', 0x807: 'SetAttributes',
           0x808: 'Close', 0x809: 'Flush', 0x80a: 'SetPriority', 0x80b: 'GetPriority', 0x80c: 'OpenLinkFile'}
FS_FILE_SHAPE = {0x802: (3, 2), 0x803: (4, 2), 0x804: (0, 0), 0x808: (0, 0), 0x80a: (1, 0), 0x80b: (0, 0), 0x80c: (0, 0)}
_file_seen = set()
def fs_command(off, cmd, normal, translate):
    """File-session methods sit in the 0x4ef3a4-0x4ef6ff run; take one stub per (id, shape), the rest of the run is other
    handle classes (directory) and stays unnamed. Everything else is an fs:USER service command."""
    if 0x4ef3a4 <= off < 0x4ef700 and off != 0x4ef574 and off != 0x4ef330 and cmd in FS_FILE:
        if FS_FILE_SHAPE.get(cmd) == (normal, translate) and cmd not in _file_seen:
            _file_seen.add(cmd); return 'File::' + FS_FILE[cmd]
        return ''
    return FS_NAMES.get(cmd, '')
rows = []
for f in funcs:
    if f.get('library') != 'ctrsvc': continue
    st = int(f['offset'], 16); sz = int(f['size'], 16)
    ins = list(md.disasm(code[st:st + sz], st))
    if not any(i.mnemonic == 'svc' and i.op_str == '#0x32' for i in ins): continue
    hdr = None; regs = {}
    for i in ins:
        o = i.op_str
        m = re.match(r'(\w+), \[pc(?:, #(0x[0-9a-f]+|\d+))?\]$', o)
        if i.mnemonic == 'ldr' and m:
            regs[m.group(1)] = struct.unpack_from('<I', code, i.address + 8 + (int(m.group(2), 0) if m.group(2) else 0))[0]
        elif i.mnemonic == 'mov' and re.match(r'\w+, #', o):
            d, v = o.split(', #'); regs[d] = int(v, 0)
        elif i.mnemonic == 'movw': d, v = o.split(', #'); regs[d] = int(v, 0)
        elif i.mnemonic == 'movt':
            d, v = o.split(', #'); regs[d] = (regs.get(d, 0) & 0xffff) | (int(v, 0) << 16)
        elif i.mnemonic == 'str' and re.match(r'(\w+), \[r\d+(, #0x80)?\]!?$', o) and '#0x80' in o:
            hdr = regs.get(o.split(',')[0]); break
    if hdr is None: continue
    handle = ''
    for k, i in enumerate(ins):                       # `ldr rX, =g; ldr r0, [rX]` before the svc: per-service handle global
        if i.mnemonic == 'ldr' and re.match(r'r0, \[(r\d+)\]$', i.op_str):
            rx = i.op_str.split('[')[1].rstrip(']')
            for j in ins[:k]:
                m = re.match(rx + r', \[pc(?:, #(0x[0-9a-f]+|\d+))?\]$', j.op_str)
                if j.mnemonic == 'ldr' and m: handle = '%08x' % struct.unpack_from('<I', code, j.address + 8 + (int(m.group(1), 0) if m.group(1) else 0))[0]
    rows.append((hdr >> 16, (hdr >> 6) & 0x3f, hdr & 0x3f, f['name'], f['offset'], callers[st], handle, SERVICE.get(handle, '') or ('' if handle else session_service(st, hdr >> 16)), ''))
rows.sort()
rows = [r[:8] + ((fs_command(int(r[4], 16), r[0], r[1], r[2]) if r[7].startswith('fs:USER') else ''),) for r in sorted(rows, key=lambda r: int(r[4], 16))]
rows.sort()
with open(sys.argv[1], 'w', newline='') as o:
    w = csv.writer(o); w.writerow(['cmd_id', 'normal', 'translate', 'name', 'offset', 'callers', 'handle_global', 'service', 'command']); w.writerows(rows)
print(len(rows), 'wrappers,', len({r[:3] for r in rows}), 'distinct headers')
