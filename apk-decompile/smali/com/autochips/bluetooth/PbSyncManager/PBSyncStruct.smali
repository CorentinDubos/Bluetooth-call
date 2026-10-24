.class public Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct;
.super Ljava/lang/Object;
.source "PBSyncStruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$SharedPreferencesCommitor;,
        Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$PBMGRPhoneBookInfo_T;
    }
.end annotation


# static fields
.field public static final BT_PBAP_REAL_PATH_PS_INCOMING_HIS:I = 0x4

.field public static final BT_PBAP_REAL_PATH_PS_MISSED_HIS:I = 0x6

.field public static final BT_PBAP_REAL_PATH_PS_OUTGOING_HIS:I = 0x2

.field public static final BT_PBAP_REAL_PATH_PS_PB:I = 0x0

.field public static final BT_PBAP_REAL_PATH_SIM_INCOMING_HIS:I = 0x5

.field public static final BT_PBAP_REAL_PATH_SIM_MISSED_HIS:I = 0x7

.field public static final BT_PBAP_REAL_PATH_SIM_OUTGOING_HIS:I = 0x3

.field public static final BT_PBAP_REAL_PATH_SIM_PB:I = 0x1

.field public static final BT_PBAP_SYNC_PATH_ALL_CALLHISTORY:I = 0x6

.field public static final BT_PBAP_SYNC_PATH_ALL_PHONEBOOK:I = 0x2

.field public static final BT_PBAP_SYNC_PATH_ALL_PHONEBOOK_CALLHISTORY:I = 0x7

.field public static final BT_PBAP_SYNC_PATH_DIALED_CALLHISTORY:I = 0x4

.field public static final BT_PBAP_SYNC_PATH_MISSED_CALLHISTORY:I = 0x5

.field public static final BT_PBAP_SYNC_PATH_PHONESELF_PHONEBOOK:I = 0x0

.field public static final BT_PBAP_SYNC_PATH_RECEIVE_CALLHISTORY:I = 0x3

.field public static final BT_PBAP_SYNC_PATH_SIM_PHONEBOOK:I = 0x1

.field public static final DEFAULT_CALLHISTORY_SIZE:I = 0x32

.field public static final DEFAULT_PHONEBOOK_SIZE:I = 0xc8

.field public static final MAX_OF_PBMGR_CONNECT_CNT:I = 0x4

.field public static final NUM_OF_BT_PBAP_SYNC_PATH:I = 0x8

.field public static final NUM_OF_BT_REAL_PATH:I = 0x8

.field public static final NUM_OF_PBMGR_PATH:I = 0xe

.field public static final PBMGR_CMD_DOWNLOAD:I = 0x1

.field public static final PBMGR_CMD_SETDEVICE:I = 0x0

.field public static final PBMGR_COMBINED_CALLED_HISTORY:I = 0x1000

.field public static final PBMGR_DEFAULT_DOWNLOADING_STEP:I = 0x5

.field public static final PBMGR_DEFAULT_INDICATION_STEP:I = 0xa

.field public static final PBMGR_DEFAULT_REDOWNLOADING_STEP:I = 0x5

.field public static final PBMGR_DUN_CONNECT:I = 0x5

.field public static final PBMGR_DWNLD_RST_FAIL:I = 0x1

.field public static final PBMGR_DWNLD_RST_FILLERR:I = 0x4

.field public static final PBMGR_DWNLD_RST_NOTSUPPORT:I = 0x3

.field public static final PBMGR_DWNLD_RST_SUCCESS:I = 0x0

.field public static final PBMGR_DWNLD_RST_TERMINATE:I = 0x2

.field public static final PBMGR_DWNLD_RST_UNKNOWN:I = 0x5

.field public static final PBMGR_HFP_CONNECT:I = 0x2

.field public static final PBMGR_INCOMING_CALLS_HISTORY:I = 0x40

.field public static final PBMGR_MISSED_CALLS_HISTORY:I = 0x400

.field public static final PBMGR_OUTGOING_CALLS_HISTORY:I = 0x100

.field public static final PBMGR_PBAP_CONNECT:I = 0x1

.field public static final PBMGR_PB_ROOT:I = 0x2

.field public static final PBMGR_PHONEBOOK:I = 0x10

.field public static final PBMGR_ROOT:I = 0x1

.field public static final PBMGR_SIM_COMBINED_CALLED_HISTORY:I = 0x2000

.field public static final PBMGR_SIM_INCOMING_CALLS_HISTORY:I = 0x80

.field public static final PBMGR_SIM_MISSED_CALLS_HISTORY:I = 0x800

.field public static final PBMGR_SIM_OUTGONING_CALLS_HISTORY:I = 0x200

.field public static final PBMGR_SIM_PHONEBOOK:I = 0x20

.field public static final PBMGR_SIM_ROOT:I = 0x8

.field public static final PBMGR_SIM_TREE:I = 0x4

.field public static final PBMGR_SPP_CONNECT:I = 0x3

.field public static final PBMGR_SYNC_STATE_IDLE:I = 0x0

.field public static final PBMGR_SYNC_STATE_SYNCING:I = 0x1

.field public static final PBMGR_UNKNOW:I = 0x0

.field public static final PBMGR_UNKNOW_CONNECT:I = 0x0

.field public static final PROFILE_CONNECTED:I = 0x1

.field public static final PROFILE_NOT_CONNECT:I = 0x0

.field public static final PROFILE_NOT_EXIST:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_STOPING:I = 0x2

.field public static final STATE_SYNC:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
