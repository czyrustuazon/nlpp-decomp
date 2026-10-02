"""Command tables (header word -> name) from 3dbrew, for stubs whose service is attributed by cluster (svc_table.py).
A name is applied only when id, normal and translate counts all match the stub's header."""
def parse(txt):
    d = {}
    for line in txt.strip().splitlines():
        h, n = line.split(None, 1)
        h = int(h, 16); d[(h >> 16, (h >> 6) & 0x3f, h & 0x3f)] = n.strip()
    return d
BOSS = parse("""
0x00010082 InitializeSession
0x00020100 SetStorageInfo
0x00030000 UnregisterStorage
0x00040000 GetStorageInfo
0x00050042 RegisterPrivateRootCa
0x00060084 RegisterPrivateClientCert
0x00070000 GetNewArrivalFlag
0x00080002 RegisterNewArrivalEvent
0x00090040 SetOptoutFlag
0x000A0000 GetOptoutFlag
0x000B00C2 RegisterTask
0x000C0082 UnregisterTask
0x000D0082 ReconfigureTask
0x000E0000 GetTaskIdList
0x000F0042 GetStepIdList
0x00100102 GetNsDataIdList
0x00110102 GetNsDataIdList1
0x00120102 GetNsDataIdList2
0x00130102 GetNsDataIdList3
0x00140082 SendProperty
0x00150042 SendPropertyHandle
0x00160082 ReceiveProperty
0x00170082 UpdateTaskInterval
0x00180082 UpdateTaskCount
0x00190042 GetTaskInterval
0x001A0042 GetTaskCount
0x001B0042 GetTaskServiceStatus
0x001C0042 StartTask
0x001D0042 StartTaskImmediate
0x001E0042 CancelTask
0x001F0000 GetTaskFinishHandle
0x00200082 GetTaskState
0x00210042 GetTaskResult
0x00220042 GetTaskCommErrorCode
0x002300C2 GetTaskStatus
0x00240082 GetTaskError
0x00250082 GetTaskInfo
0x00260040 DeleteNsData
0x002700C2 GetNsDataHeaderInfo
0x00280102 ReadNsData
0x00290080 SetNsDataAdditionalInfo
0x002A0040 GetNsDataAdditionalInfo
0x002B0080 SetNsDataNewFlag
0x002C0040 GetNsDataNewFlag
0x002D0040 GetNsDataLastUpdate
0x002E0040 GetErrorCode
0x002F0140 RegisterStorageEntry
0x00300000 GetStorageEntryInfo
0x00310100 SetStorageOption
0x00320000 GetStorageOption
0x00330042 StartBgImmediate
0x00340042 GetTaskPriority
0x003500C2 RegisterImmediateTask
0x00360084 SetTaskQuery
0x00370084 GetTaskQuery
0x04010082 InitializeSessionPrivileged
0x04040080 GetAppNewFlag
0x040500C0 SetAppNewFlag
0x040600C0 SetOptoutFlagPrivileged
0x04070080 GetOptoutFlagPrivileged
0x04090102 UnregisterTaskPrivileged
0x040A0000 GetAppIdList
0x040B0080 GetTaskIdListPrivileged
0x040C00C2 GetStepIdListPrivileged
0x040D0182 GetNsDataIdListPrivileged
0x040E0182 GetNsDataIdListPrivileged1
0x040F0102 GetTaskInfoPrivileged
0x04100102 GetTaskStatusPrivileged1
0x04110102 GetTaskErrorPrivileged
0x04130082 SendPropertyPrivileged
0x04140082 ReceivePropertyPrivileged
0x041500C0 DeleteNsDataPrivileged
0x04160142 GetNsDataHeaderInfoPrivileged
0x04170182 ReadNsDataPrivileged
0x04180100 SetNsDataAdditionalInfoPrivileged
0x041900C0 GetNsDataAdditionalInfoPrivileged
0x041A0100 SetNsDataNewFlagPrivileged
0x041B00C0 GetNsDataNewFlagPrivileged
0x041C00C0 GetNsDataLastUpdatePrivileged
0x041F0040 SetTestModeAvailability
0x04200000 GetTestModeAvailability
0x04250042 SetPolicyListEnvId
0x04260042 GetPolicyListEnvId
0x04270042 SetPolicyListUrl
0x04280042 GetPolicyListUrl
0x042E00C2 StartTaskPrivileged
0x042F00C2 StartTaskImmediatePrivileged
0x043000C2 CancelTaskPrivileged
0x04330080 GetStorageOptionPrivileged
0x043400C2 StartBgImmediatePrivileged
0x043700C2 GetTaskPriorityPrivileged
0x04390104 GetTaskQueryPrivileged
0x043E0042 SetSprelayUrl
0x043F0042 GetSprelayUrl
0x04400080 SetSprelayInterval
0x04410000 GetSprelayInterval
0x04470002 RegisterNewArrivalEventPrivileged
0x04490142 RegisterTaskPrivileged
0x044A0180 SetStorageInfoPrivileged
0x044B01C0 RegisterStorageEntryPrivileged
0x044C0080 UnregisterStoragePrivileged
0x044D0080 GetStorageInfoPrivileged
0x044E0080 GetStorageEntryInfoPrivileged
0x044F0102 UpdateTaskIntervalPrivileged
0x04500102 UpdateTaskCountPrivileged
0x045100C2 GetTaskIntervalPrivileged
0x045200C2 GetTaskCountPrivileged
0x045300C2 GetTaskServiceStatusPrivileged
0x04540102 GetTaskStatePrivileged
0x045500C2 GetTaskResultPrivileged
0x045600C2 GetTaskCommErrorCodePrivileged
0x04570142 GetTaskStatusPrivileged
0x04580104 SetTaskQueryPrivileged
""")
NWM = parse("""
0x000102C2 Initialize
0x00020000 Scrap
0x00030000 Finalize
0x00040402 CreateNetwork
0x00050040 EjectClient
0x00060000 EjectSpectator
0x00070080 UpdateNetworkAttribute
0x00080000 DestroyNetwork
0x00090442 ConnectNetwork
0x000A0000 DisconnectNetwork
0x000B0000 GetConnectionStatus
0x000D0040 GetNodeInformation
0x000E0006 GetNodeInformationList
0x000F0404 StartScan
0x00100042 SetApplicationData
0x00110040 GetApplicationData
0x00120100 Bind
0x00130040 Unbind
0x001400C0 PullPacket
0x00150080 SetMaxSendDelay
0x00170182 SendTo
0x001A0000 GetChannel
0x001B0302 InitializeWithVersion
0x001D0044 CreateNetwork2
0x001E0084 ConnectNetwork2
0x001F0006 GetNodeInformationList2
0x00200040 Flush
0x00210080 SetProbeResponseParam
0x00220402 ScanOnConnection
""")
DSP = parse("""
0x00010040 RecvData
0x00020040 RecvDataIsReady
0x00030080 SendData
0x00040040 SendDataIsEmpty
0x000500C2 SendFifoEx
0x000600C0 RecvFifoEx
0x00070040 SetSemaphore
0x00080000 GetSemaphore
0x00090040 ClearSemaphore
0x000A0040 MaskSemaphore
0x000B0000 CheckSemaphoreRequest
0x000C0040 ConvertProcessAddressFromDspDram
0x000D0082 WriteProcessPipe
0x000E00C0 ReadPipe
0x000F0080 GetPipeReadableSize
0x001000C0 ReadPipeIfPossible
0x001100C2 LoadComponent
0x00120000 UnloadComponent
0x00130082 FlushDataCache
0x00140082 InvalidateDCache
0x00150082 RegisterInterruptEvents
0x00160000 GetSemaphoreEventHandle
0x00170040 SetSemaphoreMask
0x00180040 GetPhysicalAddress
0x00190040 GetVirtualAddress
0x001A0042 SetIirFilterI2S1
0x001B0042 SetIirFilterI2S2
0x001C0082 SetIirFilterEQ
0x001D00C0 ReadMultiEx_SPI2
0x001E00C2 WriteMultiEx_SPI2
0x001F0000 GetHeadphoneStatus
0x00200040 ForceHeadphoneOut
0x00210000 GetIsDspOccupied
""")
BY_SERVICE = {'boss': BOSS, 'nwm::UDS': NWM, 'dsp::DSP': DSP}

# Global-handle services (ac, cfg, ptm, APT, frd, cam, mic, ir, cecd, ndm, hid): tools/ipc_tables_global.txt, "## KEY" sections.
def _load_global():
    import os, re
    d, key = {}, None
    for line in open(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'ipc_tables_global.txt'), encoding='utf-8'):
        line = line.strip()
        if line.startswith('## '): key = line[3:]; d[key] = {}
        elif key and re.match(r'0x[0-9A-Fa-f]{8} ', line):
            h, n = line.split(None, 1); h = int(h, 16); d[key][(h >> 16, (h >> 6) & 0x3f, h & 0x3f)] = n.strip()
    return d
GLOBAL = _load_global()
def table_for(service):
    """CSV service name (e.g. 'ptm:sysm', 'APT:U', 'ir:USER') -> command table, or None."""
    n = service.split(' (')[0]
    if n in BY_SERVICE: return BY_SERVICE[n]
    for pre, key in (('ac', 'AC'), ('cfg', 'CFG'), ('ptm', 'PTM'), ('APT', 'APT'), ('frd', 'FRD'), ('cam', 'CAM'), ('mic', 'MIC'),
                     ('ir:', 'IR'), ('cecd', 'CECD'), ('ndm', 'NDM'), ('hid', 'HID')):
        if n.startswith(pre): return GLOBAL[key]
    return None
