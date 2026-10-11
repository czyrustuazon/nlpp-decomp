"""Shared setup for tools/eh: repository paths, scratch directory, flag sets, symbol tables."""
import collections, csv, os, sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
CALLER_CWD = os.getcwd()
os.chdir(ROOT)


def user_path(p):
    """a path given on the command line, relative to where the tool was started"""
    return os.path.normpath(os.path.join(CALLER_CWD, p))
sys.path.insert(0, ROOT)
sys.path.insert(0, os.path.join(ROOT, 'tools', 'wrapgen'))

SCRATCH = os.environ.get('EH_SCRATCH', os.path.join('build', 'eh'))
os.makedirs(os.path.join(SCRATCH, 'tmp'), exist_ok=True)
os.environ['TMP'] = os.environ['TEMP'] = os.path.abspath(os.path.join(SCRATCH, 'tmp'))   # ARMCC's temporary files
os.environ.setdefault('S', SCRATCH)   # tools/wrapgen/gen.py wants a scratch directory too

FLAGS = {
    'plain': '--cpu=MPCore --arm -O3 -Otime --split_sections'.split(),
    'exc': '--cpu=MPCore --arm -O3 -Otime --split_sections --exceptions'.split(),
}
CXA_END_CLEANUP = 0x202080   # the last call of every cleanup pad (Thumb)


def flags(arg):
    """'plain', 'exc', or a quoted ARMCC flag list"""
    return FLAGS[arg] if arg in FLAGS else arg.split()


def sizes():
    return {int(r['Location'], 16) - 0x100000: int(r['Size'], 16) for r in csv.DictReader(open('symbols/code.bin.csv'))}


def pads():
    """parent file offset -> [(pad offset, pad size)] from symbols/cleanup_pads.csv"""
    out = collections.defaultdict(list)
    for r in csv.DictReader(open('symbols/cleanup_pads.csv')):
        out[int(r['parent'], 16)].append((int(r['offset'], 16), int(r['size'], 16)))
    return out


def handled():
    import tomllib
    return {int(f['offset'], 16) for f in tomllib.load(open('functions.toml', 'rb'))['function']}


def disasm():
    import capstone
    return capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM)
