.class public Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;
.super Landroid/app/Service;
.source "PBSyncManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;,
        Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_FINISH:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_finish"

.field public static final ACTION_DOWNLOAD_ONESTEP:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_onestep"

.field public static final ACTION_DOWNLOAD_STOP:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_stop"

.field public static final ACTION_STARTDOWNLOAD_POSITION:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.startdownload_position"

.field private static DEBUG:Z = false

.field public static final ENTIRE_DOWNLOAD_TIMEOUT:I = 0x0

.field public static final EXTRA_PBSYNC_FOLDER:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

.field public static final EXTRA_PBSYNC_ONESTEP_COUNT:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_onestep_count"

.field public static final EXTRA_PBSYNC_START_POSITION:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_start_position"

.field public static final EXTRA_PBSYNC_SUPPORT_FOLDER:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_support_folder"

.field public static final PBMGR_CREATE_CONNECT_RES:I = 0x6c

.field public static final PBMGR_DISCONNECT_CNF:I = 0x6e

.field private static final PBMGR_GET_FACTORY:I = 0x64

.field private static final PBMGR_GET_INFOLIST_CNF:I = 0x67

.field private static final PBMGR_GET_PHONEBOOK_CNF:I = 0x68

.field private static final PBMGR_GET_SERIAL:I = 0x65

.field public static final PBMGR_GET_VCARDENTRY_CNF:I = 0x6d

.field public static final PBMGR_MSGLOOP:I = 0xb

.field private static final PBMGR_SET_PATH:I = 0x69

.field private static final PBMGR_SET_PATH_CNF:I = 0x66

.field public static final PBMGR_STOP_DOWNLOAD:I = 0x70

.field public static final PBMGR_THREAD_QUIT:I = 0xa

.field public static final PBMGR_TIMER_AT_ECHO:I = 0xc

.field public static final PBMGR_TIMER_AT_GET_CUR_CHARSET:I = 0x5

.field public static final PBMGR_TIMER_AT_GET_LISTINFO:I = 0x9

.field public static final PBMGR_TIMER_AT_GET_PATH:I = 0x8

.field public static final PBMGR_TIMER_AT_SET_CUR_CHARSET:I = 0x6

.field public static final PBMGR_TIMER_AT_SET_PATH:I = 0x7

.field public static final PBMGR_TIMER_AT_SPT_CHARSET:I = 0x4

.field public static final PBMGR_TIMER_AT_SPT_PATH:I = 0x3

.field public static final PBMGR_TIMER_DOWNLOAD:I = 0x2

.field public static final PBMGR_TIMER_GETDEVICEINFO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PBSyncManagerService"

.field public static m_bStopDwLd:Z


# instance fields
.field private mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

.field private mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

.field private mBTAddrNode:Ljava/lang/String;

.field private mConnectedFlag:Z

.field private mCurDwnCountIdx:[I

.field private mCurDwnNumIdx:[I

.field private mCurReqDwnNum:I

.field private mDownLoadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadTimeout:J

.field private mEntireTimer:Ljava/util/Timer;

.field private mEntireTimerTask:Ljava/util/TimerTask;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

.field private mIsSyncUsingDun:Z

.field private mJniVcard:Ljava/lang/String;

.field private mLastMsgType:I

.field private final mManager:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;

.field private mPBCallback:Landroid/bluetooth/IPBCallback$Stub;

.field private mPbapClient:Landroid/bluetooth/IBluetoothPbapCall;

.field private mPbapClientConn:Landroid/content/ServiceConnection;

.field private mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

.field private mSppConnection:Landroid/content/ServiceConnection;

.field private mSppService:Lcom/autochips/bluetooth/spp/SppService;

.field private mSyncState:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mTmpDownloadCnt:I

.field private mTryDwnldNextFolder:Z

.field private mVcardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/PbSyncManager/PBRecord;",
            ">;"
        }
    .end annotation
.end field

.field private m_BTAddr:Ljava/lang/String;

.field private m_BTOldAddr:Ljava/lang/String;

.field private m_CurDwnIndex:[I

.field private m_CurPathStatus:[I

.field private m_CurUsingProfile:I

.field private m_FlagGetRemoteInfo:Z

.field private m_GetRemoteInfoConnIdx:I

.field private m_GetRemoteInfoConnProfile:[I

.field private m_GetRemoteInfoConnTypeCnt:I

.field public m_HFconnected:I

.field private m_IMEI:Ljava/lang/String;

.field public m_PBAPconnected:I

.field m_PclFile:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

.field private m_ResultGetRemoteInfo:Z

.field public m_SPPconnected:I

.field private m_aeConnProfile:[I

.field private m_bSupportFloder:[I

.field private m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

.field private m_eCompPath:I

.field private m_eConnType:[I

.field private m_eDwnldResult:[I

.field private m_eResultType:I

.field private m_eState:I

.field private m_manufoctor:Ljava/lang/String;

.field private m_name:Ljava/lang/String;

.field m_protolNd:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;

.field private m_rCurCharSet:I

.field m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

.field private m_rPrevCharSet:I

.field private m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

.field private m_rSptPath:I

.field private m_remoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private m_serial:Ljava/lang/String;

.field public m_sppConnectionFailed:Z

.field private m_tryProfileIndex:I

.field private m_u4DwnPaths:I

.field private m_u4DwnldStep:I

.field private m_u4IndStep:I

.field private m_u4MaxDownloadCnt:[I

.field private m_u4PBIndicateCnt:[I

.field private m_u4PBRecCnt:[I

.field private m_u4TimeOut:[I

.field private mbDwnldCPBRAgain:Z

.field private mbFirstCreate:[Z

.field private mbSppConnectAgain:Z

.field private mlocalVcard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugPB:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    const/4 v0, 0x0

    .line 208
    sput-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 251
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x2

    .line 87
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_HFconnected:I

    .line 88
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_PBAPconnected:I

    .line 89
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_SPPconnected:I

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_sppConnectionFailed:Z

    const/4 v2, 0x0

    .line 100
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 103
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTOldAddr:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_manufoctor:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_IMEI:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_name:Ljava/lang/String;

    .line 113
    iput-boolean v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_FlagGetRemoteInfo:Z

    .line 115
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_GetRemoteInfoConnTypeCnt:I

    new-array v0, v0, [I

    .line 116
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_GetRemoteInfoConnProfile:[I

    .line 118
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_GetRemoteInfoConnIdx:I

    .line 120
    iput-boolean v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_ResultGetRemoteInfo:Z

    .line 124
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSyncState:I

    const/16 v0, 0xa

    .line 131
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4IndStep:I

    const/16 v0, 0x8

    new-array v3, v0, [I

    .line 133
    iput-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eConnType:[I

    new-array v3, v0, [I

    .line 135
    iput-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    new-array v3, v0, [I

    .line 137
    iput-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4TimeOut:[I

    const/16 v3, 0xe

    new-array v4, v3, [I

    .line 139
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    new-array v3, v3, [I

    .line 141
    iput-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    const/4 v3, 0x5

    .line 143
    iput v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnldStep:I

    new-array v4, v0, [I

    .line 145
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eDwnldResult:[I

    new-array v4, v0, [I

    .line 147
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    .line 149
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnPaths:I

    new-array v4, v0, [I

    .line 151
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    .line 153
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    new-array v4, v0, [I

    .line 155
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    .line 158
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptPath:I

    .line 160
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    .line 161
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    .line 162
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPrevCharSet:I

    .line 165
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    .line 168
    new-instance v4, Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-direct {v4}, Lcom/autochips/bluetooth/util/PbSyncATGen;-><init>()V

    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    .line 171
    new-instance v4, Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-direct {v4}, Lcom/autochips/bluetooth/util/PbSyncATParser;-><init>()V

    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    const-string v4, "PBVcard.log"

    .line 174
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mlocalVcard:Ljava/lang/String;

    const-wide/32 v4, 0x2bf20

    .line 180
    iput-wide v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownloadTimeout:J

    .line 183
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    .line 186
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_protolNd:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;

    .line 189
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_PclFile:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

    .line 192
    new-instance v4, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    invoke-direct {v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;-><init>()V

    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    .line 195
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mVcardList:Ljava/util/List;

    .line 198
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurReqDwnNum:I

    new-array v4, v0, [I

    .line 200
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    new-array v4, v0, [I

    .line 201
    iput-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    .line 202
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTmpDownloadCnt:I

    .line 205
    iput v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 211
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    .line 212
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 215
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mEntireTimer:Ljava/util/Timer;

    .line 216
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mEntireTimerTask:Ljava/util/TimerTask;

    .line 219
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eState:I

    .line 222
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mBTAddrNode:Ljava/lang/String;

    .line 223
    iput-boolean v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTryDwnldNextFolder:Z

    new-array v0, v0, [Z

    .line 229
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbFirstCreate:[Z

    .line 232
    iput-boolean v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbSppConnectAgain:Z

    .line 235
    iput-boolean v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbDwnldCPBRAgain:Z

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    .line 249
    iput-boolean v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mIsSyncUsingDun:Z

    .line 254
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 256
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_aeConnProfile:[I

    .line 258
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_tryProfileIndex:I

    .line 2445
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$11;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mManager:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;

    .line 3300
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$12;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPBCallback:Landroid/bluetooth/IPBCallback$Stub;

    .line 3336
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPbapClient:Landroid/bluetooth/IBluetoothPbapCall;

    .line 3338
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$13;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPbapClientConn:Landroid/content/ServiceConnection;

    .line 3368
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$14;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$14;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private CreateConnect(I)V
    .locals 5

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateConnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1797
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x70

    const/4 v0, 0x0

    .line 1798
    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1801
    iput-boolean v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mConnectedFlag:Z

    .line 1802
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {v1, p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->SetCurProfile(I)V

    const/4 v1, 0x3

    const-string v2, "PBSyncManagerService"

    const/4 v3, 0x0

    const/16 v4, 0x6c

    if-ne v1, p1, :cond_2

    .line 1804
    iget-boolean p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_sppConnectionFailed:Z

    if-eqz p1, :cond_1

    .line 1805
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    .line 1806
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_7

    const-string p1, "[SPP] SPP could not connected!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x1f4

    .line 1810
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1813
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1815
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/autochips/bluetooth/spp/SppService;->connect(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_5

    .line 1818
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPbapClient:Landroid/bluetooth/IBluetoothPbapCall;

    if-nez p1, :cond_4

    .line 1819
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    .line 1820
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "[PBAP] mPbapClient is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 1824
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Landroid/bluetooth/IBluetoothPbapCall;->connect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1826
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    if-ne v1, p1, :cond_7

    .line 1829
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->isHfConnected()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1830
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    goto :goto_1

    .line 1832
    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    .line 1833
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_7

    const-string p1, "[HFP] HF profile is not connected"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method private CreateSaveFile()V
    .locals 2

    .line 2435
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mlocalVcard:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 2436
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2440
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2438
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private GetCurCharset(I)V
    .locals 3

    .line 2022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetCurCharset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 2023
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendTimerTask(I)V

    const/16 v0, 0xe

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 2025
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetCurCharSet()Ljava/lang/String;

    move-result-object p1

    .line 2026
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2027
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 2029
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 2030
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    .line 2031
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SetCharset(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v2, p1, :cond_3

    .line 2033
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetCurCharSet()Ljava/lang/String;

    move-result-object p1

    .line 2034
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v2, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2035
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommand(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2036
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "PBSyncManagerService"

    const-string v0, "[ATCMD] send current charset cmd fail"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :cond_2
    sput-boolean v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 2038
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private GetDownloadPath(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xff0

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xfc0

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xc00

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x300

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xc0

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x30

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x20

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x10

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private GetFactory(I)V
    .locals 4

    .line 1879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetFactory("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v2, p1, :cond_4

    .line 1881
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetManufactor()Ljava/lang/String;

    move-result-object p1

    .line 1882
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v2, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 1883
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 1884
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p1

    const-wide/16 v2, 0xc8

    .line 1886
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1889
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1892
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    const/16 v0, 0x2af8

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1893
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1894
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ReadPbAtResponse()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AT_Respond"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1896
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 1897
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_0
    const-string v2, "PBSyncManagerService"

    if-ne v1, p1, :cond_2

    .line 1899
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "[ATCMD] hf send cgmi cmd fail"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_1
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1901
    sput-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 1902
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_1

    .line 1904
    :cond_2
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "[ATCMD] hf send cgmi cmd response error"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_3
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1906
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_1

    :cond_4
    if-ne v1, p1, :cond_5

    .line 1909
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetManufactor()Ljava/lang/String;

    move-result-object p1

    .line 1910
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 1911
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    :cond_5
    :goto_1
    return-void
.end method

.method private GetFirstSelectProfile()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private GetIMEI(I)V
    .locals 3

    .line 1862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetIMEI("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x7

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 1864
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetIMEI()Ljava/lang/String;

    move-result-object p1

    .line 1865
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 1866
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommand(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1867
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "PBSyncManagerService"

    const-string v0, "[ATCMD] send imei cmd fail"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 1868
    sput-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 1869
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v1, p1, :cond_2

    .line 1872
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetIMEI()Ljava/lang/String;

    move-result-object p1

    .line 1873
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 1874
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    :cond_2
    :goto_0
    return-void
.end method

.method private GetListInfo(I)Z
    .locals 4

    .line 2153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetListInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 2154
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendTimerTask(I)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2157
    :try_start_0
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPbapClient:Landroid/bluetooth/IBluetoothPbapCall;

    invoke-interface {p1}, Landroid/bluetooth/IBluetoothPbapCall;->pbapPullVcardListing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2159
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x3

    const/16 v2, 0x14

    if-ne v1, p1, :cond_1

    .line 2163
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATPBGetListSzByCPBR()Ljava/lang/String;

    move-result-object p1

    .line 2164
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2165
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_5

    .line 2168
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATPBGetListSzByCPBR()Ljava/lang/String;

    move-result-object p1

    .line 2169
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2171
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    const-string v2, "IPHONE4,1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Iphone4S sleep begin"

    .line 2172
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    .line 2174
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 2177
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const-string v1, "Iphone4S sleep end"

    .line 2179
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 2181
    :cond_2
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 2182
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    const/16 v2, 0x64

    invoke-virtual {v1, p1, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, p1, :cond_3

    .line 2184
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    const/16 v1, 0x2af8

    invoke-virtual {p1, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2185
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2186
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ReadPbAtResponse()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AT_Respond"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    invoke-virtual {p1, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2188
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 2189
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    invoke-virtual {v1, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 2191
    :cond_3
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "PBSyncManagerService"

    const-string v1, "[ATCMD] hf get pb listinfo error"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :cond_4
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 2193
    sput-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 2194
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    :goto_2
    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private GetPBDefaultListSz()I
    .locals 2

    .line 1747
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x32

    return v0

    :cond_0
    const/16 v0, 0xc8

    return v0
.end method

.method private GetPath(I)V
    .locals 4

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetPath("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 2117
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendTimerTask(I)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2119
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x13

    const/4 v2, 0x3

    if-ne v2, p1, :cond_1

    .line 2121
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATPBGetListSz()Ljava/lang/String;

    move-result-object p1

    .line 2122
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2123
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v3, p1, :cond_6

    .line 2125
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATPBGetListSz()Ljava/lang/String;

    move-result-object p1

    .line 2126
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v3, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2127
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 2128
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    const/16 v3, 0x28

    invoke-virtual {v1, p1, v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 2130
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    const/16 v0, 0x2af8

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2132
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ReadPbAtResponse()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AT_Respond"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2134
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 2135
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string v1, "[ATCMD] hf send command get current path fail"

    const-string v3, "PBSyncManagerService"

    if-ne v2, p1, :cond_4

    .line 2137
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_3

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_3
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 2139
    sput-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 2140
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_0

    .line 2142
    :cond_4
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_5

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    :cond_5
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 2144
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private GetPreferCharset()Z
    .locals 3

    .line 1764
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1768
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1769
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    goto :goto_0

    .line 1770
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 1771
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    goto :goto_0

    .line 1772
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    const/16 v2, 0x200

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 1773
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    goto :goto_0

    .line 1774
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 1775
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    goto :goto_0

    .line 1776
    :cond_4
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 1777
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    goto :goto_0

    .line 1778
    :cond_5
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 1779
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    goto :goto_0

    .line 1780
    :cond_6
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    .line 1781
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    goto :goto_0

    .line 1782
    :cond_7
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    const/16 v2, 0x40

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    .line 1783
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    goto :goto_0

    .line 1784
    :cond_8
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    .line 1785
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    :cond_9
    :goto_0
    return v1
.end method

.method private GetRemoteDeviceInfo()V
    .locals 4

    .line 1059
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTOldAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PBSync] m_BTOldAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTOldAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PBSync] m_BTAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_manufoctor:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PBSync] m_manufoctor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_manufoctor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PBSync] m_serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 1063
    iput-boolean v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_sppConnectionFailed:Z

    .line 1064
    iput-boolean v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbSppConnectAgain:Z

    .line 1065
    iput-boolean v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbDwnldCPBRAgain:Z

    .line 1067
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTOldAddr:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_manufoctor:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    :cond_5
    const-string v0, "[PBSync] Remote Device Info is no need Change!"

    .line 1070
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1072
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->MsgLoop()V

    return-void

    .line 1076
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PBSync] Need to Get Remote Device Info! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const-string v1, ""

    .line 1077
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_manufoctor:Ljava/lang/String;

    .line 1078
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1079
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eState:I

    .line 1081
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_GetRemoteInfoConnProfile:[I

    const/4 v3, 0x2

    aput v3, v2, v0

    const/4 v3, 0x3

    .line 1082
    aput v3, v2, v1

    .line 1083
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_GetRemoteInfoConnIdx:I

    .line 1084
    iput-boolean v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_FlagGetRemoteInfo:Z

    .line 1085
    iput-boolean v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_ResultGetRemoteInfo:Z

    .line 1086
    aget v0, v2, v0

    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    .line 1087
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendTimerTask(I)V

    .line 1088
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->CreateConnect(I)V

    return-void
.end method

.method private GetSerial(I)V
    .locals 4

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetSerial("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v2, p1, :cond_4

    .line 1918
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSerial()Ljava/lang/String;

    move-result-object p1

    .line 1919
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v2, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 1920
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 1921
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p1

    const-wide/16 v2, 0xc8

    .line 1923
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1926
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1929
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    const/16 v0, 0x2af8

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1930
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1931
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ReadPbAtResponse()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AT_Respond"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1933
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 1934
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_0
    const-string v2, "PBSyncManagerService"

    if-ne v1, p1, :cond_2

    .line 1936
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "[ATCMD] hf send cgmm cmd fail"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_1
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1938
    sput-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 1939
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_1

    .line 1941
    :cond_2
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "[ATCMD] hf send cgmm cmd response error"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    :cond_3
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1943
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_1

    :cond_4
    if-ne v1, p1, :cond_5

    .line 1946
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSerial()Ljava/lang/String;

    move-result-object p1

    .line 1947
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 1948
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    :cond_5
    :goto_1
    return-void
.end method

.method private GetSptCharset(I)V
    .locals 3

    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetSptCharset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 2001
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendTimerTask(I)V

    const/16 v0, 0xd

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 2003
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSptCharSet()Ljava/lang/String;

    move-result-object p1

    .line 2004
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2005
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x0

    .line 2007
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    .line 2008
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 2009
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetCurCharset(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v2, p1, :cond_3

    .line 2011
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSptCharSet()Ljava/lang/String;

    move-result-object p1

    .line 2012
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v2, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2013
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommand(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2014
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "PBSyncManagerService"

    const-string v0, "[ATCMD] send support charset cmd fail"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :cond_2
    sput-boolean v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 2016
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private GetSptPath(I)V
    .locals 4

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetSptPath("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 1954
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendTimerTask(I)V

    const/16 v1, 0x12

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v3, p1, :cond_4

    .line 1956
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATPBGetSptPath()Ljava/lang/String;

    move-result-object p1

    .line 1957
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v3, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 1958
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 1959
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    const/16 v3, 0x28

    invoke-virtual {v1, p1, v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p1

    if-ne v2, p1, :cond_0

    .line 1961
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    const/16 v0, 0x2af8

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1962
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1963
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ReadPbAtResponse()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AT_Respond"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1965
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 1966
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v1, "[ATCMD] hf send support cmd fail"

    const-string v3, "PBSyncManagerService"

    if-ne v0, p1, :cond_2

    .line 1968
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_1
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1970
    sput-boolean v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 1971
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_0

    .line 1973
    :cond_2
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_3

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_3
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1975
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_0

    :cond_4
    if-ne v0, p1, :cond_5

    .line 1978
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATPBGetSptPath()Ljava/lang/String;

    move-result-object p1

    .line 1979
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 1980
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    goto :goto_0

    :cond_5
    if-ne v2, p1, :cond_6

    const/4 v0, 0x0

    .line 1982
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptPath:I

    or-int/lit16 v0, v0, 0xff0

    .line 1984
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptPath:I

    .line 1993
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 1994
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetSptCharset(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private GetVcard(III)Z
    .locals 6

    .line 2207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetVcard("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 2208
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    const-string v1, "PBSyncManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2209
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "[STOP]AT_CMD_GET_PB_RECORDS"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :cond_0
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    return v2

    :cond_1
    sub-int v0, p3, p2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 2214
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurReqDwnNum:I

    .line 2215
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aput p2, v0, v4

    .line 2216
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTmpDownloadCnt:I

    .line 2217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ATCMD]request download firstIdx = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", endIdx = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 2218
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurReqDwnNum:I

    if-gtz v0, :cond_3

    .line 2219
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "[ATCMD]GetVcard firstIdx > endIdx, should never happen"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    :cond_2
    iput v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 2221
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    return v3

    :cond_3
    const/4 v0, 0x2

    .line 2225
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendTimerTask(I)V

    if-ne v3, p1, :cond_4

    .line 2229
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->CreateSaveFile()V

    .line 2233
    :try_start_0
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPbapClient:Landroid/bluetooth/IBluetoothPbapCall;

    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mJniVcard:Ljava/lang/String;

    iget p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurReqDwnNum:I

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v0, v0, v1

    invoke-interface {p1, p2, p3, v0}, Landroid/bluetooth/IBluetoothPbapCall;->pbapPullPhonebook(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2238
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v3

    :cond_4
    const/4 v4, 0x3

    const/16 v5, 0x15

    if-ne v4, p1, :cond_5

    .line 2242
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2, p3}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATPBGetRecs(II)Ljava/lang/String;

    move-result-object p1

    .line 2243
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v5}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2244
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setRespondString(Ljava/lang/String;)V

    .line 2245
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    return v3

    :cond_5
    if-ne v0, p1, :cond_d

    .line 2248
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2, p3}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATPBGetRecs(II)Ljava/lang/String;

    move-result-object p1

    .line 2249
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v5}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2251
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    const-string p3, "IPHONE4,1"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "Iphone4S sleep begin"

    .line 2252
    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const-wide/16 p2, 0x12c

    .line 2254
    :try_start_1
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 2257
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const-string p2, "Iphone4S sleep end"

    .line 2259
    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 2261
    :cond_6
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 2262
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_7

    .line 2264
    iput-boolean v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbDwnldCPBRAgain:Z

    .line 2265
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    const/16 p2, 0x2af8

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2266
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2267
    iget-object p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {p3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ReadPbAtResponse()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AT_Respond"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2269
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 2270
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 2272
    :cond_7
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_8

    const-string p1, "[ATCMD] hf get pb records error"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    :cond_8
    iget-boolean p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbDwnldCPBRAgain:Z

    const-string p2, " end= "

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget p1, p1, p3

    iget p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnldStep:I

    add-int/2addr p1, p3

    sub-int/2addr p1, v3

    iget-object p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget p3, p3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    if-lt p1, p3, :cond_a

    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget p1, p1, p3

    iget-object p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget p3, p3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    if-ge p1, p3, :cond_a

    .line 2277
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[ATCMD] try get pb records again! begin="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget p2, p2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    :cond_9
    iput-boolean v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbDwnldCPBRAgain:Z

    .line 2280
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget p2, p2, p3

    iget-object p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget p3, p3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    invoke-direct {p0, p1, p2, p3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetVcard(III)Z

    goto :goto_2

    .line 2281
    :cond_a
    iget-boolean p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbDwnldCPBRAgain:Z

    if-nez p1, :cond_c

    .line 2283
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[ATCMD] try get pb records again2! begin="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget p2, p2, p3

    iget p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnldStep:I

    add-int/2addr p2, p3

    sub-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_b
    iput-boolean v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbDwnldCPBRAgain:Z

    .line 2286
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v0, p2, p3

    aget p2, p2, p3

    iget p3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnldStep:I

    add-int/2addr p2, p3

    sub-int/2addr p2, v3

    invoke-direct {p0, p1, v0, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetVcard(III)Z

    goto :goto_2

    .line 2288
    :cond_c
    iput-boolean v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbDwnldCPBRAgain:Z

    .line 2289
    iput v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 2290
    sput-boolean v3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 2291
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    :goto_2
    return v3

    :cond_d
    return v2
.end method

.method private IsMoreThanMaxCount()Z
    .locals 14

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsMoreThanMaxCount :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    const/4 v4, 0x2

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v0, v0, v1

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, -0x1

    const/4 v11, 0x6

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    if-ne v2, v1, :cond_3

    .line 1716
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v1, v0, v2

    if-eq v1, v10, :cond_0

    aget v0, v0, v2

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v3, v1, v6

    aget v1, v1, v5

    add-int/2addr v3, v1

    if-le v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    return v12

    :cond_2
    return v13

    :cond_3
    if-ne v11, v1, :cond_2d

    .line 1723
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v1, v0, v11

    if-eq v1, v10, :cond_6

    .line 1724
    aget v1, v0, v11

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v3, v2, v11

    aget v4, v2, v9

    add-int/2addr v3, v4

    aget v4, v2, v8

    add-int/2addr v3, v4

    aget v4, v2, v7

    add-int/2addr v3, v4

    aget v4, v2, v6

    add-int/2addr v3, v4

    aget v2, v2, v5

    add-int/2addr v3, v2

    if-le v1, v3, :cond_5

    aget v0, v0, v11

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    return v13

    :cond_5
    :goto_0
    return v12

    .line 1731
    :cond_6
    aget v1, v0, v2

    if-eq v1, v10, :cond_2d

    .line 1732
    aget v1, v0, v2

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v4, v3, v6

    aget v3, v3, v5

    add-int/2addr v4, v3

    if-le v1, v4, :cond_8

    aget v0, v0, v2

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    return v13

    :cond_8
    :goto_1
    return v12

    :pswitch_1
    if-ne v3, v1, :cond_c

    .line 1688
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v1, v0, v3

    if-eq v1, v10, :cond_9

    aget v0, v0, v3

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v2, v1, v8

    aget v1, v1, v7

    add-int/2addr v2, v1

    if-le v0, v2, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v0, v0, v3

    if-nez v0, :cond_b

    :cond_a
    return v12

    :cond_b
    return v13

    :cond_c
    if-ne v11, v1, :cond_2d

    .line 1695
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v1, v0, v11

    if-eq v1, v10, :cond_f

    .line 1696
    aget v1, v0, v11

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v3, v2, v11

    aget v4, v2, v9

    add-int/2addr v3, v4

    aget v4, v2, v8

    add-int/2addr v3, v4

    aget v4, v2, v7

    add-int/2addr v3, v4

    aget v4, v2, v6

    add-int/2addr v3, v4

    aget v2, v2, v5

    add-int/2addr v3, v2

    if-le v1, v3, :cond_e

    aget v0, v0, v11

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    return v13

    :cond_e
    :goto_2
    return v12

    .line 1703
    :cond_f
    aget v1, v0, v3

    if-eq v1, v10, :cond_2d

    .line 1704
    aget v1, v0, v3

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v4, v2, v8

    aget v2, v2, v7

    add-int/2addr v4, v2

    if-le v1, v4, :cond_11

    aget v0, v0, v3

    if-nez v0, :cond_10

    goto :goto_3

    :cond_10
    return v13

    :cond_11
    :goto_3
    return v12

    :pswitch_2
    const/4 v0, 0x3

    if-ne v0, v1, :cond_15

    .line 1660
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v2, v1, v0

    if-eq v2, v10, :cond_12

    aget v1, v1, v0

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v3, v2, v11

    aget v2, v2, v9

    add-int/2addr v3, v2

    if-le v1, v3, :cond_13

    :cond_12
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v0, v1, v0

    if-nez v0, :cond_14

    :cond_13
    return v12

    :cond_14
    return v13

    :cond_15
    if-ne v11, v1, :cond_2d

    .line 1667
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v2, v1, v11

    if-eq v2, v10, :cond_18

    .line 1668
    aget v0, v1, v11

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v3, v2, v11

    aget v4, v2, v9

    add-int/2addr v3, v4

    aget v4, v2, v8

    add-int/2addr v3, v4

    aget v4, v2, v7

    add-int/2addr v3, v4

    aget v4, v2, v6

    add-int/2addr v3, v4

    aget v2, v2, v5

    add-int/2addr v3, v2

    if-le v0, v3, :cond_17

    aget v0, v1, v11

    if-nez v0, :cond_16

    goto :goto_4

    :cond_16
    return v13

    :cond_17
    :goto_4
    return v12

    .line 1675
    :cond_18
    aget v2, v1, v0

    if-eq v2, v10, :cond_2d

    .line 1676
    aget v2, v1, v0

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v4, v3, v11

    aget v3, v3, v9

    add-int/2addr v4, v3

    if-le v2, v4, :cond_1a

    aget v0, v1, v0

    if-nez v0, :cond_19

    goto :goto_5

    :cond_19
    return v13

    :cond_1a
    :goto_5
    return v12

    :pswitch_3
    if-ne v12, v1, :cond_1e

    .line 1633
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v1, v0, v12

    if-eq v1, v10, :cond_1b

    aget v0, v0, v12

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v1, v1, v2

    if-le v0, v1, :cond_1c

    :cond_1b
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v0, v0, v12

    if-nez v0, :cond_1d

    :cond_1c
    return v12

    :cond_1d
    return v13

    :cond_1e
    if-ne v4, v1, :cond_2d

    .line 1640
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v1, v0, v4

    if-eq v1, v10, :cond_21

    .line 1641
    aget v1, v0, v4

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v3, v5, v3

    aget v2, v5, v2

    add-int/2addr v3, v2

    if-le v1, v3, :cond_20

    aget v0, v0, v4

    if-nez v0, :cond_1f

    goto :goto_6

    :cond_1f
    return v13

    :cond_20
    :goto_6
    return v12

    .line 1647
    :cond_21
    aget v1, v0, v12

    if-eq v1, v10, :cond_2d

    .line 1648
    aget v1, v0, v12

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v2, v3, v2

    if-le v1, v2, :cond_23

    aget v0, v0, v12

    if-nez v0, :cond_22

    goto :goto_7

    :cond_22
    return v13

    :cond_23
    :goto_7
    return v12

    :pswitch_4
    if-nez v1, :cond_27

    .line 1607
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v1, v0, v13

    if-eq v1, v10, :cond_24

    aget v0, v0, v13

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v1, v1, v3

    if-le v0, v1, :cond_25

    :cond_24
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v0, v0, v13

    if-nez v0, :cond_26

    :cond_25
    return v12

    :cond_26
    return v13

    :cond_27
    if-ne v4, v1, :cond_2d

    .line 1614
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    aget v1, v0, v4

    if-eq v1, v10, :cond_2a

    .line 1615
    aget v1, v0, v4

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v3, v5, v3

    aget v2, v5, v2

    add-int/2addr v3, v2

    if-le v1, v3, :cond_29

    aget v0, v0, v4

    if-nez v0, :cond_28

    goto :goto_8

    :cond_28
    return v13

    :cond_29
    :goto_8
    return v12

    .line 1621
    :cond_2a
    aget v1, v0, v13

    if-eq v1, v10, :cond_2d

    .line 1622
    aget v1, v0, v13

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v2, v2, v3

    if-le v1, v2, :cond_2c

    aget v0, v0, v13

    if-nez v0, :cond_2b

    goto :goto_9

    :cond_2b
    return v13

    :cond_2c
    :goto_9
    return v12

    :cond_2d
    :goto_a
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private MsgLoop()V
    .locals 6

    .line 1093
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eState:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDownLoadList.size() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTOldAddr:Ljava/lang/String;

    .line 1102
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MsgLoop warning! (mDownLoadList.get(0) == null)"

    .line 1103
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1105
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->MsgLoop()V

    return-void

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;

    iget v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->eMsg:I

    .line 1109
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;

    iget-object v3, v3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->btaddr:Ljava/lang/String;

    iput-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    .line 1110
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;

    iget v3, v3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->downloadpath:I

    iput v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    .line 1111
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;

    iget-boolean v3, v3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$DownloadListNode;->bContinue:Z

    .line 1112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "m_eCompPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1113
    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 1121
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mLastMsgType:I

    .line 1122
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->ServiceInit()Z

    .line 1123
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetRemoteDeviceInfo()V

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_3

    .line 1125
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mLastMsgType:I

    .line 1126
    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->ServiceStartDownload(Z)Z

    :cond_3
    :goto_0
    return-void

    .line 1115
    :cond_4
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSyncState:I

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgLoop() mSyncState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private NextProccessAfterDownloadFail()V
    .locals 4

    .line 2367
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    aget v0, v2, v0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    .line 2369
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PBSyncManagerService"

    const-string v2, "[PBAP] downloading callhistory, begin the next path from SetPath() function-fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v3, v0, v2

    add-int/2addr v3, v1

    aput v3, v0, v2

    .line 2371
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    const/16 v0, 0x69

    const/4 v1, 0x0

    .line 2372
    invoke-direct {p0, v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    goto :goto_0

    .line 2374
    :cond_1
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 2375
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    :goto_0
    return-void
.end method

.method private NextProccessAfterDownloadSuccess()V
    .locals 9

    .line 2338
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    const-string v1, "PBSyncManagerService"

    if-eqz v0, :cond_1

    .line 2339
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[STOP]NextProccessAfterDownloadSuccess"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    return-void

    :cond_1
    const/4 v0, 0x6

    .line 2344
    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    const/4 v3, 0x0

    const/16 v4, 0x69

    const/4 v5, -0x1

    const/16 v6, 0xe

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    aget v0, v0, v2

    if-ge v0, v6, :cond_3

    .line 2346
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "[ATCMD] downloading callhistory, begin the next path from SetPath() function"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v2, v0, v1

    add-int/2addr v2, v7

    aput v2, v0, v1

    .line 2348
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    aput v5, v0, v1

    .line 2349
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    aput v8, v0, v1

    .line 2350
    invoke-direct {p0, v4, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    .line 2351
    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    aget v0, v0, v2

    if-ge v0, v6, :cond_5

    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    if-ne v7, v0, :cond_5

    .line 2354
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "[ATCMD] downloading all phonebook, begin the next path from SetPath() function"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_4
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v2, v0, v1

    add-int/2addr v2, v7

    aput v2, v0, v1

    .line 2356
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    aput v5, v0, v1

    .line 2357
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    aput v8, v0, v1

    .line 2358
    invoke-direct {p0, v4, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    goto :goto_0

    .line 2360
    :cond_5
    iput v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 2361
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aput v8, v0, v1

    .line 2362
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    :goto_0
    return-void
.end method

.method private OneStepDownloadFinish()V
    .locals 4

    .line 2384
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 2385
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_1

    .line 2386
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PBSyncManagerService"

    const-string v1, "[STOP]OneStepDownloadFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    return-void

    .line 2392
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD] mCurDwnNumIdx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " m_rPBInfo.u4RecordNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurDwnCountIdx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 2395
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 2403
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v0, v0, v1

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnldStep:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    if-lt v0, v1, :cond_3

    .line 2404
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v2, v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    invoke-direct {p0, v0, v1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetVcard(III)Z

    goto :goto_1

    .line 2406
    :cond_3
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v3, v1, v2

    aget v1, v1, v2

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnldStep:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v3, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetVcard(III)Z

    goto :goto_1

    .line 2397
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendRemainDownloadIntent()V

    const-string v0, "[ATCMD] current folder download success"

    .line 2398
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 2400
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->NextProccessAfterDownloadSuccess()V

    :goto_1
    return-void
.end method

.method private ParseRespond()V
    .locals 11

    .line 1236
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getCurATCmd()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "PBSyncManagerService"

    if-eq v0, v1, :cond_45

    const/4 v4, 0x7

    const-string v5, ""

    if-eq v0, v4, :cond_40

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3b

    const/4 v4, 0x5

    if-eq v0, v4, :cond_35

    packed-switch v0, :pswitch_data_0

    const/4 v4, -0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    .line 1531
    :pswitch_0
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_1

    .line 1532
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[STOP]AT_CMD_GET_PB_RECORDS"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1537
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseCPBR()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1539
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getRecs()Ljava/util/List;

    move-result-object v0

    .line 1541
    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTmpDownloadCnt:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTmpDownloadCnt:I

    .line 1542
    new-instance v3, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;

    invoke-direct {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;-><init>()V

    move v4, v6

    .line 1544
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 1545
    iget v7, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;

    iget-object v8, v8, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/autochips/bluetooth/util/PbSyncATParser;->DecodeCharset(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1546
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v1, :cond_4

    .line 1547
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/M"

    .line 1548
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "/W"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "/H"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "/O"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "/0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1550
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_3
    const-string v8, " "

    .line 1552
    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1554
    :cond_4
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v9, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v8, v8, v9

    shl-int v8, v2, v8

    invoke-virtual {v3, v8}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setType(I)V

    .line 1555
    invoke-virtual {v3, v7}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setName(Ljava/lang/String;)V

    .line 1556
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;

    iget-object v7, v7, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_ADDREC_PARAM_T;->sNumber:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->setNumber(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "[ATCMD] Record name none and number none, ignore!"

    .line 1564
    invoke-direct {p0, v7}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1566
    :cond_5
    iget-object v7, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    iget-object v9, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v10, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v9, v9, v10

    aget v8, v8, v9

    add-int/2addr v8, v2

    invoke-virtual {v7, v3, v8}, Lcom/autochips/bluetooth/util/BTDBAdapter;->insertOneRecord(Lcom/autochips/bluetooth/PbSyncManager/PBRecord;I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_6

    .line 1568
    iget-object v7, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v9, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v8, v8, v9

    aget v9, v7, v8

    add-int/2addr v9, v2

    aput v9, v7, v8

    .line 1569
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->IsMoreThanMaxCount()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1570
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 1571
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendRemainDownloadIntent()V

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD] current folder download enough : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1574
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->NextProccessAfterDownloadSuccess()V

    return-void

    :cond_6
    const-string v7, "exsisted record:"

    .line 1578
    invoke-direct {p0, v7}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1581
    :cond_7
    :goto_1
    invoke-virtual {v3}, Lcom/autochips/bluetooth/PbSyncManager/PBRecord;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1583
    :cond_8
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v3, v1, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 1584
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v2, v0, v1

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurReqDwnNum:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1586
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendOneStepDownloadIntent()V

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD] m_u4PBRecCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD] mTmpDownloadCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTmpDownloadCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurReqDwnNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurReqDwnNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1590
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->OneStepDownloadFinish()V

    goto/16 :goto_5

    .line 1592
    :cond_9
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "[ATCMD] parser CPBR error, need check!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_a
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1594
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1478
    :pswitch_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 1479
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_c

    .line 1480
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "[STOP]AT_CMD_GET_PB_LISTSIZE"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_b
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1485
    :cond_c
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseCPBR()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1487
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getListInfo()Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    move-result-object v0

    .line 1488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ATCMD] CPBR() iRecCnt= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iRecCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1489
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v3, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    iput v3, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    .line 1490
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iStartIdx:I

    iput v0, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4StartIdx:I

    .line 1491
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v3, v0, v1

    if-ne v4, v3, :cond_d

    .line 1492
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v3, v3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4StartIdx:I

    aput v3, v0, v1

    .line 1495
    :cond_d
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    if-le v0, v1, :cond_e

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget-boolean v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->bGetRecNum:Z

    if-nez v0, :cond_e

    .line 1496
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v3, v3, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4StartIdx:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    .line 1499
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]Request m_rPBInfo.u4RecordNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , m_rPBInfo.u4MaxIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1501
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v0, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    if-gtz v0, :cond_f

    goto :goto_3

    .line 1507
    :cond_f
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    if-ge v0, v1, :cond_12

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    if-le v0, v1, :cond_10

    goto :goto_2

    .line 1516
    :cond_10
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v0, v0, v1

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnldStep:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    if-lt v0, v1, :cond_11

    .line 1517
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v2, v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    invoke-direct {p0, v0, v1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetVcard(III)Z

    goto/16 :goto_5

    .line 1519
    :cond_11
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v4, v1, v3

    aget v1, v1, v3

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnldStep:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v4, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetVcard(III)Z

    goto/16 :goto_5

    :cond_12
    :goto_2
    const-string v0, "mCurDwnCountIdx[m_eCompPath] >= m_rPBInfo.u4MaxIndex or mCurDwnCountIdx[m_eCompPath] > m_rPBInfo.u4RecordNum"

    .line 1509
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1512
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->NextProccessAfterDownloadSuccess()V

    goto/16 :goto_5

    .line 1502
    :cond_13
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]has no record: folder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1503
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->NextProccessAfterDownloadSuccess()V

    goto/16 :goto_5

    .line 1523
    :cond_14
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "[ATCMD] get pb list size error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_15
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1525
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1437
    :pswitch_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 1438
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_17

    .line 1439
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_16

    const-string v0, "[STOP]AT_CMD_GET_PB_CUR_PATH"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_16
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1444
    :cond_17
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseCPBS()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1446
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getCurPath()Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;

    move-result-object v0

    .line 1447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ATCMD] CPBS() current count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iRecCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1448
    iget v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    if-lez v1, :cond_19

    .line 1449
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v3, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iMaxCnt:I

    iput v3, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    .line 1450
    iget v1, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iRecCnt:I

    if-nez v1, :cond_18

    .line 1451
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetPBDefaultListSz()I

    move-result v2

    iput v2, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    .line 1452
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput-boolean v6, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->bGetRecNum:Z

    goto :goto_4

    .line 1454
    :cond_18
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v3, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iRecCnt:I

    iput v3, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    .line 1455
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput-boolean v2, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->bGetRecNum:Z

    goto :goto_4

    .line 1458
    :cond_19
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput v4, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    .line 1459
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput v4, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    .line 1462
    :goto_4
    iget v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_PB_SETLISTINFO_PARAM_T;->iRecCnt:I

    if-nez v0, :cond_1a

    .line 1463
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetPBDefaultListSz()I

    move-result v1

    iput v1, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    .line 1464
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput-boolean v6, v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->bGetRecNum:Z

    .line 1466
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ARCMD] CPBS() m_rPBInfo.u4RecordNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iget v1, v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1467
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetListInfo(I)Z

    goto/16 :goto_5

    .line 1470
    :cond_1b
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "[ATCMD] get current path error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_1c
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1472
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1323
    :pswitch_3
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 1324
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_1e

    .line 1325
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "[STOP]AT_CMD_GET_PB_SPT_PATH"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_1d
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1330
    :cond_1e
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseCPBS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1332
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getParsePath()I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptPath:I

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD] support path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptPath:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1334
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnPaths:I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptPath:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 1335
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetSptCharset(I)V

    goto/16 :goto_5

    .line 1337
    :cond_1f
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "[ATCMD] support download path is not match download path"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_20
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1339
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1342
    :cond_21
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "[ATCMD] get support path error!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_22
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1344
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1418
    :pswitch_4
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 1419
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_24

    .line 1420
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "[STOP]AT_CMD_SET_PB_CUR_PATH"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_23
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1425
    :cond_24
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseCPBS()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1427
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetPath(I)V

    goto/16 :goto_5

    .line 1429
    :cond_25
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string v0, "[ATCMD] get set current path error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_26
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1431
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1399
    :pswitch_5
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 1400
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_28

    .line 1401
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_27

    const-string v0, "[STOP]AT_CMD_SET_CUR_CHARSET"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_27
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1406
    :cond_28
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->ParseCSCS()Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x69

    const/4 v1, 0x0

    .line 1408
    invoke-direct {p0, v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 1410
    :cond_29
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "[ATCMD] set current charset error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_2a
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1412
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1371
    :pswitch_6
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 1372
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_2c

    .line 1373
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_2b

    const-string v0, "[STOP]AT_CMD_GET_CUR_CHARSET"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_2b
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1378
    :cond_2c
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->ParseCSCS()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1380
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getCurCharSet()I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    .line 1381
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPrevCharSet:I

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD] m_rCurCharSet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1383
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetPreferCharset()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1384
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SetCharset(I)V

    goto/16 :goto_5

    .line 1386
    :cond_2d
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "[ATCMD] GetPreferCharset() error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_2e
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1388
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1391
    :cond_2f
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_30

    const-string v0, "[ATCMD] get current charset error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_30
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1393
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1350
    :pswitch_7
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 1351
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_32

    .line 1352
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_31

    const-string v0, "[STOP]AT_CMD_GET_SPT_CHARSET"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_31
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1357
    :cond_32
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->ParseCSCS()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1359
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getSptCharSet()Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD] m_rSptCharSets = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget v1, v1, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->iCharSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1361
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetCurCharset(I)V

    goto/16 :goto_5

    .line 1363
    :cond_33
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_34

    const-string v0, "[ATCMD] get support charset error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_34
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1365
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1299
    :cond_35
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_37

    .line 1300
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_36

    const-string v0, "[STOP]AT_CMD_GET_SERIAL"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_36
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1305
    :cond_37
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseCGMM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    const-string v1, "V8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "MOTOROLA"

    .line 1308
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_manufoctor:Ljava/lang/String;

    .line 1311
    :cond_38
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1312
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_39

    const-string v0, "[ATCMD] get seiral error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_39
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1316
    :cond_3a
    iput-boolean v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_ResultGetRemoteInfo:Z

    .line 1317
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1280
    :cond_3b
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_3d

    .line 1281
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_3c

    const-string v0, "[STOP]AT_CMD_GET_MANUFACTOR"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_3c
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1286
    :cond_3d
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseCGMI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_manufoctor:Ljava/lang/String;

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_manufoctor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_manufoctor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_manufoctor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1289
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_3e

    const-string v0, "[ATCMD] get manufoctor error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_3e
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_5

    .line 1293
    :cond_3f
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetSerial(I)V

    goto/16 :goto_5

    .line 1262
    :cond_40
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_42

    .line 1263
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_41

    const-string v0, "[STOP]AT_CMD_GET_IMEI"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_41
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_5

    .line 1268
    :cond_42
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseCGSN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_IMEI:Ljava/lang/String;

    .line 1269
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1270
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_43

    const-string v0, "[ATCMD] get IMEI error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_43
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_5

    .line 1274
    :cond_44
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetFactory(I)V

    goto :goto_5

    .line 1239
    :cond_45
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 1240
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_47

    .line 1241
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_46

    const-string v0, "[STOP]AT_CMD_SET_ECHO"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_46
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_5

    .line 1246
    :cond_47
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseATE0()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1248
    iget-boolean v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_FlagGetRemoteInfo:Z

    if-eqz v0, :cond_48

    .line 1249
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetFactory(I)V

    goto :goto_5

    .line 1251
    :cond_48
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetSptPath(I)V

    goto :goto_5

    .line 1254
    :cond_49
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_4a

    const-string v0, "[ATCMD] set echo error!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_4a
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1256
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ReadPauseInfo()V
    .locals 13

    .line 991
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.startdownload_position"

    .line 992
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    const-string v2, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PauseInfo] ReadPauseInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const-string v1, "pause_data"

    const/4 v2, 0x0

    .line 996
    invoke-virtual {p0, v1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "BTADDR"

    const-string v4, ""

    .line 997
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "COMPath"

    .line 998
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 999
    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    iget v6, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CurPathStatus"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v5, v6

    .line 1000
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PauseInfo] old download Path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "m_CurPathStatus = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    iget v6, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v4, v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1002
    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_start_position"

    const/16 v5, 0xe

    const/4 v6, 0x1

    if-nez v3, :cond_1

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    .line 1004
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    shl-int v7, v6, v1

    invoke-virtual {v3, v7}, Lcom/autochips/bluetooth/util/BTDBAdapter;->delete(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1006
    :cond_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1007
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    move v3, v2

    :goto_1
    const-string v7, "] = "

    if-ge v3, v5, :cond_2

    .line 1012
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PBRecCnt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    aput v9, v8, v3

    .line 1013
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PauseInfo] m_u4PBRecCnt["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v7, v7, v3

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_2
    const/16 v8, 0x8

    const/4 v9, -0x1

    const/4 v10, 0x5

    if-ge v3, v8, :cond_3

    .line 1016
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eDwnldResult:[I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DwnldResult"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    aput v11, v8, v3

    .line 1018
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SupportFolder"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    aput v10, v8, v3

    .line 1019
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CurrentDownloadPathIndex"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    aput v10, v8, v3

    .line 1020
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CurrentDownloadNumIndex"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    aput v9, v8, v3

    .line 1021
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CurrentDownloadCountIdx"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    aput v9, v8, v3

    .line 1022
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PauseInfo] m_eDwnldResult["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eDwnldResult:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1023
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PauseInfo] m_bSupportFloder["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1024
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PauseInfo] m_CurDwnIndex["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1025
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PauseInfo] mCurDwnNumIdx["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1026
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PauseInfo] mCurDwnCountIdx["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1029
    :cond_3
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v7, v1, v3

    if-ge v7, v5, :cond_4

    .line 1030
    iget-object v7, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    aget v8, v1, v3

    iget-object v11, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v1, v1, v3

    aget v1, v11, v1

    aput v1, v7, v8

    .line 1033
    :cond_4
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v1, v1, v3

    if-ne v1, v6, :cond_7

    .line 1034
    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetDownloadPath(I)I

    move-result v1

    .line 1035
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eDwnldResult:[I

    iget v7, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aput v10, v3, v7

    .line 1036
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    aput v10, v3, v7

    .line 1037
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    aput v2, v3, v7

    .line 1038
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    aput v9, v8, v7

    .line 1039
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    aput v2, v8, v7

    .line 1040
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    aget v3, v3, v7

    aput v2, v8, v3

    move v3, v2

    :goto_3
    if-ge v3, v5, :cond_6

    shl-int v7, v6, v3

    and-int v8, v1, v7

    if-eqz v8, :cond_5

    .line 1043
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v8, v7}, Lcom/autochips/bluetooth/util/BTDBAdapter;->delete(I)V

    .line 1044
    iget-object v7, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aput v2, v7, v3

    .line 1045
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PbSync] reset subpath "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1048
    :cond_6
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1049
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    .line 1051
    :cond_7
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->ServiceGetRecCnt(Ljava/lang/String;I)I

    move-result v1

    .line 1052
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1053
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    :goto_4
    return-void
.end method

.method private ReadPauseInfoWithNoIntent()V
    .locals 8

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PauseInfo] ReadPauseInfoWithNoIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const-string v0, "pause_data"

    const/4 v1, 0x0

    .line 960
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "BTADDR"

    const-string v3, ""

    .line 961
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "COMPath"

    .line 962
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 963
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PauseInfo] old download Path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 964
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xe

    if-nez v2, :cond_1

    :goto_0
    if-ge v1, v3, :cond_0

    .line 966
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/util/BTDBAdapter;->delete(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v2, v1

    :goto_1
    const-string v4, "] = "

    if-ge v2, v3, :cond_2

    .line 972
    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PBRecCnt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v2

    .line 973
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PauseInfo] m_u4PBRecCnt["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v4, v4, v2

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_2
    const/16 v3, 0x8

    if-ge v2, v3, :cond_3

    .line 976
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eDwnldResult:[I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DwnldResult"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v2

    .line 978
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SupportFolder"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v2

    .line 979
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CurrentDownloadPathIndex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v2

    .line 980
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CurrentDownloadNumIndex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v2

    .line 981
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CurrentDownloadCountIdx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v2

    .line 982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PauseInfo] m_eDwnldResult["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eDwnldResult:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 983
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PauseInfo] m_bSupportFloder["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PauseInfo] m_CurDwnIndex["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 985
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PauseInfo] mCurDwnNumIdx["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 986
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PauseInfo] mCurDwnCountIdx["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_3
    return-void
.end method

.method private RemoveConnect(I)V
    .locals 3

    .line 2305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]RemoveConnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "mConnectedFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mConnectedFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 2306
    iget-boolean v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mConnectedFlag:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2309
    iput-boolean v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mConnectedFlag:Z

    .line 2311
    iget-boolean v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_FlagGetRemoteInfo:Z

    if-nez v1, :cond_1

    .line 2312
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->WritePauseInfo()V

    :cond_1
    const/16 v1, 0x6e

    const/4 v2, 0x1

    if-ne v2, p1, :cond_4

    .line 2315
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPbapClient:Landroid/bluetooth/IBluetoothPbapCall;

    if-nez p1, :cond_3

    .line 2316
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    .line 2317
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "PBSyncManagerService"

    const-string v0, "[PBAP] mPbapClient is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 2321
    :cond_3
    :try_start_0
    invoke-interface {p1}, Landroid/bluetooth/IBluetoothPbapCall;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2323
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne v0, p1, :cond_5

    .line 2326
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne v0, p1, :cond_6

    .line 2328
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/spp/SppService;->disconnect()V

    :cond_6
    :goto_0
    return-void
.end method

.method private SendEntireTimerTask()V
    .locals 4

    .line 425
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendEntireTimerTask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBSyncManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mEntireTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 427
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mEntireTimer:Ljava/util/Timer;

    .line 429
    :cond_1
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$10;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$10;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mEntireTimerTask:Ljava/util/TimerTask;

    .line 442
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mEntireTimer:Ljava/util/Timer;

    iget-wide v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownloadTimeout:J

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private SendOneStepDownloadIntent()V
    .locals 8

    .line 510
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v3, v1, v2

    aget v0, v0, v3

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    aget v1, v1, v2

    aget v1, v3, v1

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4IndStep:I

    add-int/2addr v1, v2

    const-string v2, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_onestep_count"

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

    const-string v4, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_onestep"

    if-lt v0, v1, :cond_0

    .line 511
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 512
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4IndStep:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 515
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v6, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v5, v5, v6

    aget v6, v1, v5

    iget v7, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4IndStep:I

    add-int/2addr v6, v7

    aput v6, v1, v5

    .line 516
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 519
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v6, v1, v5

    aget v0, v0, v6

    iget-object v6, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    aget v1, v1, v5

    aget v1, v6, v1

    if-le v0, v1, :cond_1

    .line 520
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 521
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v6, v1, v5

    aget v0, v0, v6

    iget-object v6, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    aget v1, v1, v5

    aget v1, v6, v1

    sub-int/2addr v0, v1

    .line 522
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 523
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    iget v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 526
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v4, v2, v3

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v2, v2, v3

    aget v2, v5, v2

    aput v2, v0, v4

    .line 527
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "Stop download, Send have download broadcast"

    .line 529
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 530
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    :cond_1
    return-void
.end method

.method private SendRemainDownloadIntent()V
    .locals 6

    .line 535
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v3, v1, v2

    aget v3, v0, v3

    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v5, v1, v2

    aget v5, v4, v5

    if-ge v3, v5, :cond_0

    .line 536
    aget v3, v1, v2

    aget v3, v4, v3

    aget v1, v1, v2

    aget v0, v0, v1

    sub-int/2addr v3, v0

    .line 537
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_onestep"

    .line 538
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    const-string v2, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_onestep_count"

    .line 540
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v4, v2, v3

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v2, v2, v3

    aget v2, v5, v2

    aput v2, v1, v4

    .line 542
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private SendStopDownloadIntent()V
    .locals 7

    .line 547
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->WritePauseInfo()V

    .line 549
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v0, "pause_data"

    .line 550
    invoke-virtual {p0, v0, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurPathStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_CurPathStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 555
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    const-string v1, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    aget v3, v2, v0

    const/16 v4, 0xe

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v4, v2, v0

    aget v4, v3, v4

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    aget v6, v2, v0

    aget v6, v5, v6

    if-le v4, v6, :cond_0

    .line 558
    aget v4, v2, v0

    aget v3, v3, v4

    aget v0, v2, v0

    aget v0, v5, v0

    sub-int/2addr v3, v0

    .line 559
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_onestep"

    .line 560
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_onestep_count"

    .line 562
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v5, v3, v4

    iget-object v6, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v3, v3, v4

    aget v3, v6, v3

    aput v3, v2, v5

    .line 564
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 567
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_stop"

    .line 568
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 570
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private SendTimerTask(I)V
    .locals 3

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PBSync]SendTimerTask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 297
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 301
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$1;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$1;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 311
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x1

    const-wide/16 v1, 0x1388

    if-ne v0, p1, :cond_3

    .line 313
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$2;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$2;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 323
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne v0, p1, :cond_4

    .line 325
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$3;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$3;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 335
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne v0, p1, :cond_5

    .line 337
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$4;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$4;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 347
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ne v0, p1, :cond_6

    .line 349
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$5;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$5;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 359
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    if-ne v0, p1, :cond_7

    .line 361
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$6;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$6;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 371
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    if-ne v0, p1, :cond_8

    .line 373
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$7;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$7;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 383
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_8
    const/16 v0, 0x9

    if-ne v0, p1, :cond_9

    .line 385
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$8;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$8;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 395
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_9
    const/16 v0, 0xc

    if-ne v0, p1, :cond_a

    .line 397
    new-instance p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$9;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$9;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 407
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_a
    :goto_0
    return-void
.end method

.method private ServiceGetRecCnt(Ljava/lang/String;I)I
    .locals 9

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const-string p1, "bad path"

    .line 677
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->errorLog(Ljava/lang/String;)V

    return v0

    :pswitch_0
    const/16 v1, 0xff0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0xfc0

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xc00

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x300

    goto :goto_0

    :pswitch_4
    const/16 v1, 0xc0

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x30

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x20

    goto :goto_0

    :pswitch_7
    const/16 v1, 0x10

    :goto_0
    const/16 v2, 0xe

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    const-string v4, "pause_data"

    .line 682
    invoke-virtual {p0, v4, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "BTADDR"

    const-string v6, ""

    .line 683
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 684
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CurPathStatus"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 685
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "BTAddr is not equals!"

    .line 686
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    move p1, v0

    :goto_1
    if-ge p1, v2, :cond_0

    .line 688
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    shl-int v1, v3, p1

    invoke-virtual {p2, v1}, Lcom/autochips/bluetooth/util/BTDBAdapter;->delete(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return v0

    .line 691
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbFirstCreate:[Z

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_4

    if-ne v4, v3, :cond_4

    const-string p1, "Last downloading is stop by power off!"

    .line 692
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    move p1, v0

    :goto_2
    if-ge p1, v2, :cond_3

    shl-int p2, v3, p1

    and-int v4, v1, p2

    if-eqz v4, :cond_2

    .line 695
    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v4, p2}, Lcom/autochips/bluetooth/util/BTDBAdapter;->delete(I)V

    .line 696
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aput v0, p2, p1

    .line 697
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PbSync] reset subpath "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return v0

    :cond_4
    move p1, v0

    :goto_3
    if-ge v0, v2, :cond_a

    .line 703
    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v5, v4, v0

    if-nez v5, :cond_5

    .line 704
    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    shl-int v6, v3, v0

    invoke-virtual {v5, v6}, Lcom/autochips/bluetooth/util/BTDBAdapter;->getCount(I)I

    move-result v5

    aput v5, v4, v0

    :cond_5
    shl-int v4, v3, v0

    and-int/2addr v4, v1

    if-eqz v4, :cond_6

    .line 707
    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v4, v4, v0

    add-int/2addr p1, v4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move p1, v0

    :goto_4
    if-ge v0, v2, :cond_a

    .line 713
    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v5, v4, v0

    if-nez v5, :cond_8

    .line 714
    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    shl-int v6, v3, v0

    invoke-virtual {v5, v6}, Lcom/autochips/bluetooth/util/BTDBAdapter;->getCount(I)I

    move-result v5

    aput v5, v4, v0

    :cond_8
    shl-int v4, v3, v0

    and-int/2addr v4, v1

    if-eqz v4, :cond_9

    .line 717
    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v4, v4, v0

    add-int/2addr p1, v4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 722
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetRecCnt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ServiceGetRecord(IIILjava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/PbSyncManager/PBRecord;",
            ">;)Z"
        }
    .end annotation

    .line 734
    invoke-interface {p4}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p3, :cond_1

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p1, 0xff0

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xfc0

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xc00

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x300

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xc0

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x30

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x20

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x10

    :goto_0
    move v4, p3

    move v2, v0

    move v3, v2

    :goto_1
    const/16 v5, 0xe

    if-ge v2, v5, :cond_a

    shl-int v5, v1, v2

    .line 797
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "m_u4PBRecCnt("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    and-int v6, p1, v5

    if-eqz v6, :cond_9

    .line 798
    iget-object v6, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v7, v6, v2

    if-lez v7, :cond_9

    .line 799
    aget v7, v6, v2

    add-int/2addr v7, v3

    if-ge p2, v7, :cond_8

    add-int v7, p2, p3

    .line 801
    aget v6, v6, v2

    add-int/2addr v6, v3

    if-gt v7, v6, :cond_5

    sub-int/2addr p2, v3

    if-gez p2, :cond_2

    move p2, v0

    .line 806
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {p1, v5, p2, v4}, Lcom/autochips/bluetooth/util/BTDBAdapter;->getPbRecords(III)Ljava/util/List;

    move-result-object p1

    move p2, v0

    .line 807
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 808
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 810
    :cond_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p3, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    sub-int v6, p2, v3

    if-gez v6, :cond_6

    move v6, v0

    .line 820
    :cond_6
    iget-object v7, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v7, v7, v2

    sub-int/2addr v7, v6

    .line 821
    iget-object v8, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v8, v5, v6, v7}, Lcom/autochips/bluetooth/util/BTDBAdapter;->getPbRecords(III)Ljava/util/List;

    move-result-object v5

    move v6, v0

    .line 822
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_7

    .line 823
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    sub-int/2addr v4, v7

    .line 827
    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v5, v5, v2

    goto :goto_4

    .line 830
    :cond_8
    aget v5, v6, v2

    :goto_4
    add-int/2addr v3, v5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ServiceStartDownload(Z)Z
    .locals 6

    .line 1131
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 1132
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eState:I

    const-string p1, "[PbSync] bad download path"

    .line 1133
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    return v2

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    if-nez v0, :cond_1

    const-string p1, "[PbSync] mServiceHandler = null!"

    .line 1137
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    return v2

    .line 1140
    :cond_1
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->ServiceInit()Z

    const/4 v0, 0x1

    .line 1141
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eState:I

    .line 1142
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendEntireTimerTask()V

    .line 1144
    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetDownloadPath(I)I

    move-result v3

    iput v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnPaths:I

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1146
    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1149
    :cond_2
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurReqDwnNum:I

    .line 1150
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    const/4 v4, -0x1

    aput v4, v1, v3

    .line 1151
    sput-boolean v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 1152
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    aput v2, v1, v3

    const/4 v1, 0x5

    if-eqz p1, :cond_3

    .line 1155
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->ReadPauseInfo()V

    goto :goto_2

    .line 1157
    :cond_3
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->ReadPauseInfoWithNoIntent()V

    .line 1158
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eDwnldResult:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aput v1, p1, v3

    .line 1159
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    aput v1, p1, v3

    .line 1160
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    aput v2, p1, v3

    .line 1161
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    aput v4, p1, v3

    .line 1162
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    aput v2, p1, v3

    move p1, v2

    :goto_1
    const/16 v3, 0xe

    if-ge p1, v3, :cond_5

    .line 1164
    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnPaths:I

    shl-int v4, v0, p1

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 1165
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v3, v4}, Lcom/autochips/bluetooth/util/BTDBAdapter;->delete(I)V

    .line 1166
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aput v2, v3, p1

    .line 1167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PbSync] reset subpath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1172
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbFirstCreate:[Z

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aput-boolean v2, p1, v3

    .line 1174
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eDwnldResult:[I

    aget p1, p1, v3

    if-nez p1, :cond_8

    .line 1175
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanEntireTimerTask()V

    .line 1176
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_finish"

    .line 1177
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1178
    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1179
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v1, v1, v3

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_support_folder"

    if-nez v1, :cond_6

    .line 1180
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 1182
    :cond_6
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1184
    :goto_3
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1186
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eState:I

    .line 1187
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 1188
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1189
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->MsgLoop()V

    goto :goto_4

    .line 1191
    :cond_7
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSyncState:I

    :goto_4
    return v0

    .line 1196
    :cond_8
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_manufoctor:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_9

    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_9

    .line 1198
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_PclFile:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_manufoctor:Ljava/lang/String;

    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_serial:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->getPclCfgFrmList(Ljava/lang/String;Ljava/lang/String;)Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_protolNd:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;

    goto :goto_5

    :cond_9
    const-string p1, "[PBSync] m_manufoctor or m_serial not get"

    .line 1200
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1203
    :goto_5
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aput v0, p1, v3

    const-string p1, "pause_data"

    .line 1204
    invoke-virtual {p0, p1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurPathStatus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    iget v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v4, v4, v5

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1206
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    const-string v4, "BTADDR"

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1207
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ServiceStartDownload]m_CurPathStatus = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    iget v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1210
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_protolNd:Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->setConnType(Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;)Z

    .line 1212
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eConnType:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v4, p1, v3

    if-nez v4, :cond_a

    .line 1213
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetFirstSelectProfile()I

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    goto :goto_6

    .line 1215
    :cond_a
    aget p1, p1, v3

    iput p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    .line 1218
    :goto_6
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    const/4 v3, 0x4

    if-ge p1, v3, :cond_b

    .line 1219
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_aeConnProfile:[I

    aput p1, v3, v2

    .line 1220
    aput v2, v3, p1

    .line 1222
    :cond_b
    iput v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_tryProfileIndex:I

    .line 1224
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 1225
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->CreateConnect(I)V

    return v0
.end method

.method private SetCharset(I)V
    .locals 6

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]SetCharset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 2045
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendTimerTask(I)V

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 2047
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget-object p1, p1, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->mapCharSet:Ljava/util/Map;

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2048
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {v1, p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATSetCharSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2049
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2050
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x69

    const/4 v4, 0x1

    if-ne v4, p1, :cond_1

    .line 2052
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    .line 2053
    invoke-direct {p0, v3, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    if-ne v5, p1, :cond_6

    .line 2055
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    iget-object p1, p1, Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;->mapCharSet:Ljava/util/Map;

    iget v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2056
    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {v5, p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATSetCharSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2057
    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v5, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2058
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    const/16 v5, 0x28

    invoke-virtual {v0, p1, v5}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 2060
    invoke-direct {p0, v3, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "PBSyncManagerService"

    if-ne v1, p1, :cond_4

    .line 2062
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "[ATCMD] hf send command current charset fail"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :cond_3
    iput v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 2064
    sput-boolean v4, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 2065
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_0

    .line 2067
    :cond_4
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "[ATCMD] hf set current charset fail"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_5
    iput v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 2069
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private SetEcho(IZ)V
    .locals 3

    .line 1844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]SetEcho("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 p2, 0x2

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    const/16 p1, 0xc

    .line 1846
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendTimerTask(I)V

    .line 1847
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATSetEcho(Z)Ljava/lang/String;

    move-result-object p1

    .line 1848
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0, p2}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 1849
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 1851
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetSptPath(I)V

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_3

    .line 1853
    iget-boolean p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_FlagGetRemoteInfo:Z

    if-eqz p2, :cond_2

    .line 1854
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetFactory(I)V

    goto :goto_0

    .line 1856
    :cond_2
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetSptPath(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private TryDownloadNextPath()V
    .locals 6

    .line 459
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v2, v0, v1

    const/16 v3, 0xe

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    .line 460
    aget v2, v0, v1

    add-int/2addr v2, v4

    aput v2, v0, v1

    .line 462
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v2, v0, v1

    if-ge v2, v3, :cond_2

    .line 463
    aget v0, v0, v1

    shl-int v0, v4, v0

    .line 464
    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnPaths:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptPath:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v2, v0, v1

    add-int/2addr v2, v4

    aput v2, v0, v1

    goto :goto_0

    .line 469
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    iget v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 471
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    aget v0, v0, v1

    const/4 v1, 0x0

    if-ne v0, v3, :cond_4

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PbSync] download completed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eDwnldResult:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aput v1, v0, v2

    .line 474
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->WritePauseInfo()V

    .line 476
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aput v1, v0, v2

    const-string v0, "pause_data"

    .line 477
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurPathStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurPathStatus:[I

    iget v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 479
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 480
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter;->flushPhonebookTable()V

    .line 481
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanEntireTimerTask()V

    .line 482
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_finish"

    .line 483
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v2, v2, v3

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_support_folder"

    if-nez v2, :cond_3

    .line 486
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 488
    :cond_3
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    :goto_2
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 491
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eState:I

    .line 492
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->MsgLoop()V

    goto :goto_4

    .line 494
    :cond_4
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->WritePauseInfo()V

    .line 495
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eConnType:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    aget v3, v0, v2

    if-nez v3, :cond_5

    .line 496
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetFirstSelectProfile()I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    goto :goto_3

    .line 498
    :cond_5
    aget v0, v0, v2

    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    .line 500
    :goto_3
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_aeConnProfile:[I

    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    aput v2, v0, v1

    .line 501
    aput v1, v0, v2

    .line 502
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_tryProfileIndex:I

    const/4 v0, 0x5

    .line 504
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 505
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->CreateConnect(I)V

    :goto_4
    return-void
.end method

.method private WritePauseInfo()V
    .locals 6

    const-string v0, "pause_data"

    const/4 v1, 0x0

    .line 932
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 933
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    const-string v3, "BTADDR"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 934
    iget v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    const-string v3, "COMPath"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PauseInfo] WritePauseInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PauseInfo] m_BTAddr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PauseInfo] m_eCompPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    move v2, v1

    :goto_0
    const/16 v3, 0xe

    const-string v4, "] = "

    if-ge v2, v3, :cond_0

    .line 940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PBRecCnt"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v5, v5, v2

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PauseInfo] m_u4PBRecCnt["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DwnldResult"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eDwnldResult:[I

    aget v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SupportFolder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    aget v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentDownloadPathIndex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    aget v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentDownloadNumIndex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    aget v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentDownloadCountIdx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    aget v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PauseInfo] m_eDwnldResult["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eDwnldResult:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PauseInfo] m_bSupportFloder["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PauseInfo] m_CurDwnIndex["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PauseInfo] mCurDwnNumIdx["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PauseInfo] mCurDwnCountIdx["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 955
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSyncState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4TimeOut:[I

    return-object p0
.end method

.method static synthetic access$102(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSyncState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_remoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_remoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4IndStep:I

    return p1
.end method

.method static synthetic access$1300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    return-object p0
.end method

.method static synthetic access$1400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;I)I
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->ServiceGetRecCnt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;IIILjava/util/List;)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->ServiceGetRecord(IIILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    return-object p0
.end method

.method static synthetic access$1800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->MsgLoop()V

    return-void
.end method

.method static synthetic access$1900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    return p0
.end method

.method static synthetic access$1902(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    return p1
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eState:I

    return p0
.end method

.method static synthetic access$2000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanTimerTask()V

    return-void
.end method

.method static synthetic access$2200()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->cleanEntireTimerTask()V

    return-void
.end method

.method static synthetic access$2400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    return p0
.end method

.method static synthetic access$2402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    return p1
.end method

.method static synthetic access$2500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbSppConnectAgain:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbSppConnectAgain:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;IZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SetEcho(IZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_FlagGetRemoteInfo:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_FlagGetRemoteInfo:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->CreateConnect(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_ResultGetRemoteInfo:Z

    return p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_GetRemoteInfoConnIdx:I

    return p0
.end method

.method static synthetic access$3008(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 2

    .line 52
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_GetRemoteInfoConnIdx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_GetRemoteInfoConnIdx:I

    return v0
.end method

.method static synthetic access$3100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_GetRemoteInfoConnTypeCnt:I

    return p0
.end method

.method static synthetic access$3200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_GetRemoteInfoConnProfile:[I

    return-object p0
.end method

.method static synthetic access$3300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendTimerTask(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_BTAddr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    return-object p0
.end method

.method static synthetic access$3600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->TryDownloadNextPath()V

    return-void
.end method

.method static synthetic access$3700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_tryProfileIndex:I

    return p0
.end method

.method static synthetic access$3708(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 2

    .line 52
    iget v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_tryProfileIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_tryProfileIndex:I

    return v0
.end method

.method static synthetic access$3800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_aeConnProfile:[I

    return-object p0
.end method

.method static synthetic access$3900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurDwnIndex:[I

    return-object p0
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTryDwnldNextFolder:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendStopDownloadIntent()V

    return-void
.end method

.method static synthetic access$402(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTryDwnldNextFolder:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eConnType:[I

    return-object p0
.end method

.method static synthetic access$4200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->NextProccessAfterDownloadSuccess()V

    return-void
.end method

.method static synthetic access$4300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnPaths:I

    return p0
.end method

.method static synthetic access$4400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptPath:I

    return p0
.end method

.method static synthetic access$4500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->IsMoreThanMaxCount()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;II)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->setPath(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;I)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetListInfo(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->NextProccessAfterDownloadFail()V

    return-void
.end method

.method static synthetic access$4900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mDownLoadList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnldStep:I

    return p0
.end method

.method static synthetic access$5100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;III)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetVcard(III)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->parseVcard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mVcardList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendRemainDownloadIntent()V

    return-void
.end method

.method static synthetic access$5500(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)[I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    return-object p0
.end method

.method static synthetic access$5600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurReqDwnNum:I

    return p0
.end method

.method static synthetic access$5700(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendOneStepDownloadIntent()V

    return-void
.end method

.method static synthetic access$5800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mJniVcard:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Landroid/bluetooth/IBluetoothPbapCall;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPbapClient:Landroid/bluetooth/IBluetoothPbapCall;

    return-object p0
.end method

.method static synthetic access$5902(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Landroid/bluetooth/IBluetoothPbapCall;)Landroid/bluetooth/IBluetoothPbapCall;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPbapClient:Landroid/bluetooth/IBluetoothPbapCall;

    return-object p1
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eCompPath:I

    return p0
.end method

.method static synthetic access$6000(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/util/PbSyncATParser;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->ParseRespond()V

    return-void
.end method

.method static synthetic access$6200(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Landroid/bluetooth/IPBCallback$Stub;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPBCallback:Landroid/bluetooth/IPBCallback$Stub;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Lcom/autochips/bluetooth/spp/SppService;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    return-object p0
.end method

.method static synthetic access$6302(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Lcom/autochips/bluetooth/spp/SppService;)Lcom/autochips/bluetooth/spp/SppService;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    return-object p1
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mBTAddrNode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mBTAddrNode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;ILjava/lang/Object;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method private cleanEntireTimerTask()V
    .locals 3

    .line 446
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanEntireTimerTask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBSyncManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mEntireTimerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 449
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mEntireTimerTask:Ljava/util/TimerTask;

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mEntireTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 452
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 453
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mEntireTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 454
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mEntireTimer:Ljava/util/Timer;

    :cond_2
    return-void
.end method

.method private cleanTimerTask()V
    .locals 3

    .line 412
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanTimerTask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBSyncManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 415
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 419
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 420
    iput-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTimer:Ljava/util/Timer;

    :cond_2
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PBSyncManagerService"

    .line 3392
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseVcard()Z
    .locals 3

    .line 2425
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;

    invoke-virtual {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;-><init>(Landroid/content/Context;)V

    .line 2426
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mVcardList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2427
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mlocalVcard:Ljava/lang/String;

    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mVcardList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBVcardParser;->doParseVcard(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    .line 3388
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PBSyncManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendServiceMsg(ILjava/lang/Object;)V
    .locals 2

    .line 3398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PBSync] sendServiceMsg("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 3399
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    if-eqz v0, :cond_0

    .line 3400
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3401
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3402
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3403
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "[PBSync]mServiceHandler is null"

    .line 3406
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->errorLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setConnType(Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 844
    :cond_0
    iget-object v1, p1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    if-eqz v1, :cond_2

    .line 846
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eConnType:[I

    iget-object v4, p1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    aput v4, v1, v0

    .line 848
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eConnType:[I

    iget-object v4, p1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    aput v4, v1, v3

    .line 850
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eConnType:[I

    aget v4, v1, v0

    aget v5, v1, v3

    if-ne v4, v5, :cond_1

    .line 852
    aget v0, v1, v3

    aput v0, v1, v2

    goto :goto_0

    .line 855
    :cond_1
    aput v0, v1, v2

    goto :goto_0

    .line 858
    :cond_2
    iget-object v1, p1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    if-eqz v1, :cond_3

    .line 859
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eConnType:[I

    iget-object v4, p1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    aput v4, v1, v0

    goto :goto_0

    .line 861
    :cond_3
    iget-object v0, p1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    if-eqz v0, :cond_4

    .line 862
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eConnType:[I

    iget-object v1, p1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    aput v1, v0, v3

    .line 866
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    if-eqz v0, :cond_5

    .line 867
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eConnType:[I

    iget-object p1, p1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PHONE_INFO_NODE_T;->rProtocol:[Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;

    aget-object p1, p1, v2

    iget p1, p1, Lcom/autochips/bluetooth/util/PBSyncParsePclFile$BT_PROTOCOL_CFG_T;->u1Protocol:I

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 869
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eConnType:[I

    const/4 v0, 0x3

    aget v2, p1, v1

    aput v2, p1, v0

    const/4 v0, 0x4

    .line 871
    aget v2, p1, v1

    aput v2, p1, v0

    const/4 v0, 0x5

    .line 873
    aget v1, p1, v1

    aput v1, p1, v0

    :cond_5
    return v3
.end method

.method private setPath(II)Z
    .locals 4

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]setPath("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 2080
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->SendTimerTask(I)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2083
    :try_start_0
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPbapClient:Landroid/bluetooth/IBluetoothPbapCall;

    invoke-interface {p1, p2}, Landroid/bluetooth/IBluetoothPbapCall;->pbapSetPath(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2085
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x11

    const/4 v2, 0x3

    if-ne v2, p1, :cond_1

    .line 2089
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATPBSetPath(I)Ljava/lang/String;

    move-result-object p1

    .line 2090
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2091
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    return v0

    :cond_1
    const/4 v3, 0x2

    if-ne v3, p1, :cond_6

    .line 2094
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATPBSetPath(I)Ljava/lang/String;

    move-result-object p1

    .line 2095
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 2096
    iget-object p2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    const/16 v1, 0x28

    invoke-virtual {p2, p1, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 2098
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->GetPath(I)V

    goto :goto_1

    :cond_2
    const-string p2, "[ATCMD] hf send command set current path fail"

    const-string v1, "PBSyncManagerService"

    if-ne v2, p1, :cond_4

    .line 2100
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_3

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :cond_3
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 2102
    sput-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bStopDwLd:Z

    .line 2103
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    goto :goto_1

    .line 2105
    :cond_4
    sget-boolean p1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz p1, :cond_5

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_5
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 2107
    iget p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->RemoveConnect(I)V

    :goto_1
    return v0

    :cond_6
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public ServiceInit()Z
    .locals 5

    const/4 v0, 0x2

    .line 574
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_HFconnected:I

    .line 575
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_PBAPconnected:I

    .line 576
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_SPPconnected:I

    const/4 v0, 0x0

    .line 577
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_tryProfileIndex:I

    const/16 v1, 0xa

    .line 583
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4IndStep:I

    const/4 v1, 0x5

    .line 584
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4DwnldStep:I

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, -0x1

    if-ge v2, v3, :cond_0

    .line 587
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eConnType:[I

    aput v0, v3, v2

    .line 589
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4TimeOut:[I

    aput v4, v3, v2

    .line 590
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eDwnldResult:[I

    aput v1, v3, v2

    .line 591
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_bSupportFloder:[I

    aput v1, v3, v2

    .line 592
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnNumIdx:[I

    aput v4, v3, v2

    .line 593
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurDwnCountIdx:[I

    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 598
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBRecCnt:[I

    aput v0, v3, v2

    .line 599
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4PBIndicateCnt:[I

    aput v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 602
    iput-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rSptCharSets:Lcom/autochips/bluetooth/util/PbSyncATParser$PBMGRSPTCHARSET_T;

    .line 603
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rCurCharSet:I

    .line 604
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPrevCharSet:I

    .line 606
    iput v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mCurReqDwnNum:I

    .line 608
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput v4, v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4MaxIndex:I

    .line 609
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput v4, v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4StartIdx:I

    .line 610
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput v4, v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4Miss:I

    .line 611
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput v4, v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->u4RecordNum:I

    .line 612
    iget-object v2, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_rPBInfo:Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;

    iput-boolean v0, v2, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;->bGetRecNum:Z

    move v2, v0

    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 615
    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_aeConnProfile:[I

    aput v2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 617
    :cond_2
    iput v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_eResultType:I

    .line 619
    iput-boolean v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mTryDwnldNextFolder:Z

    .line 621
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    if-nez v0, :cond_3

    .line 622
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->getInstance()Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    .line 623
    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->initializeHfAtPhonebookParser()V

    .line 624
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->setHandler(Landroid/os/Handler;)V

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "[PBSync]Enter onBind()"

    .line 2682
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 2683
    const-class v0, Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2684
    iget-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mManager:Lcom/autochips/bluetooth/PbSyncManager/IPBSyncManager$Stub;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    const-string v0, "[PBSync]Enter onCreate()"

    .line 3239
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 3240
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 3242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mlocalVcard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mJniVcard:Ljava/lang/String;

    .line 3243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJniVcard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mJniVcard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 3245
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "pbsync_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 3246
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3247
    new-instance v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;-><init>(Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    .line 3249
    invoke-static {}, Lcom/autochips/bluetooth/util/BTDBAdapter;->getInstance()Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    .line 3250
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/util/BTDBAdapter;->setContext(Landroid/content/Context;)V

    .line 3252
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter;->open()Lcom/autochips/bluetooth/util/BTDBAdapter;

    .line 3253
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter;->loadPhonebookTable()V

    .line 3254
    invoke-static {}, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->getInstance()Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_PclFile:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

    .line 3255
    invoke-virtual {p0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->setContext(Landroid/content/Context;)V

    .line 3256
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getPclFile()Ljava/io/InputStream;

    move-result-object v0

    .line 3257
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_PclFile:Lcom/autochips/bluetooth/util/PBSyncParsePclFile;

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/util/PBSyncParsePclFile;->parserPclFile(Ljava/io/InputStream;)Z

    .line 3259
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothPbapCall;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPbapClientConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const-string v1, "PBSyncManagerService"

    if-nez v0, :cond_0

    .line 3260
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Failed to bind IBluetoothPbapCall service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/autochips/bluetooth/spp/SppService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3265
    sget-boolean v0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Failed to bind SPP service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/16 v0, 0x8

    if-ge v2, v0, :cond_2

    .line 3270
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_u4MaxDownloadCnt:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    .line 3271
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mbFirstCreate:[Z

    aput-boolean v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "Enter onDestroy()"

    .line 3277
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 3278
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 3279
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 3280
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 3281
    iput-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mServiceHandler:Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService$ServiceHandler;

    .line 3283
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter;->close()V

    .line 3284
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPbapClient:Landroid/bluetooth/IBluetoothPbapCall;

    if-eqz v0, :cond_0

    .line 3286
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPBCallback:Landroid/bluetooth/IPBCallback$Stub;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothPbapCall;->unregisterCallback(Landroid/bluetooth/IPBCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3288
    sget-boolean v1, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBSyncManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mPbapClientConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3293
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->mSppConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/PbSyncManager/PBSyncManagerService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3294
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
