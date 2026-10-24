.class public Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;
.super Landroid/app/Service;
.source "SmsSyncManagerService.java"


# static fields
.field public static final ACTION_DOWNLOAD_FINISH:Ljava/lang/String; = "com.autochips.bluetooth.dundt.SmsSyncManagerService.action.download_finish"

.field public static final ACTION_NOT_SUPPORT_DOWNLOAD_SMS:Ljava/lang/String; = "com.autochips.bluetooth.dundt.SmsSyncManagerService.action.not_support_download_sms"

.field public static final ACTION_SMS_COUNT_ZERO:Ljava/lang/String; = "com.autochips.bluetooth.dundt.SmsSyncManagerService.action.sms_count_zero"

.field public static final ACTION_STEP_DOWNLOAD:Ljava/lang/String; = "com.autochips.bluetooth.dundt.SmsSyncManagerService.action.step_download"

.field private static DEBUG:Z = false

.field private static final DUN_RECIEVE_RESPOND_SMS:I = 0x386

.field public static final EXTRA_SMS_COUNT:Ljava/lang/String; = "com.autochips.bluetooth.dundt.SmsSyncManagerService.extra.sms_count"

.field private static final MSG_SMS_CREATE_CONNECT_RES:I = 0x384

.field private static final MSG_SMS_DISCONNECT_CNF:I = 0x385

.field private static final MSG_SMS_STOP_DOWNLOAD:I = 0x387

.field private static final MSG_TIMEOUT_GET_FACTORY:I = 0x0

.field private static final MSG_TIMEOUT_GET_SERIAL:I = 0x1

.field private static final MSG_TIMEOUT_GET_SMS_COUNT:I = 0x3

.field private static final MSG_TIMEOUT_GET_SMS_RECORD:I = 0x2

.field private static final MSG_TIMEOUT_SET_ECHO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SmsSyncManagerService"


# instance fields
.field private bMMGLFlag:Z

.field private bSppConnectAngain:Z

.field private bStopDownload:Z

.field private cur:I

.field private mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

.field private mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

.field private mDunConnection:Landroid/content/ServiceConnection;

.field private mDunService:Landroid/bluetooth/IBluetoothDunDt;

.field private mGetSmsCount:I

.field private mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

.field private mIndexArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSmsSyncFinish:Z

.field private mIsSyncingSms:Z

.field private final mManager:Lcom/autochips/bluetooth/dundt/ISMSSyncManager$Stub;

.field private mMaxSmsIndex:J

.field private mSMSCallback:Landroid/bluetooth/IDunCallback$Stub;

.field private mServiceHandler:Landroid/os/Handler;

.field private mSmsCount:I

.field private mSppConnection:Landroid/content/ServiceConnection;

.field private mSppService:Lcom/autochips/bluetooth/spp/SppService;

.field private mStepCount:I

.field private mStepIndex:I

.field private mSyncState:I

.field private mTemStepIndex:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mTryCommandCount:I

.field private mTryConnectCount:I

.field private m_BTAddr:Ljava/lang/String;

.field private m_CurUsingProfile:I

.field private m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

.field private m_manufoctor:Ljava/lang/String;

.field private m_remoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private m_serial:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugSMS:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    .line 82
    new-instance v1, Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-direct {v1}, Lcom/autochips/bluetooth/util/PbSyncATGen;-><init>()V

    iput-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    .line 85
    new-instance v1, Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-direct {v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;-><init>()V

    iput-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    .line 88
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_manufoctor:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_serial:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    .line 110
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_BTAddr:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 114
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimer:Ljava/util/Timer;

    .line 115
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    const/4 v1, -0x1

    .line 120
    iput v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSmsCount:I

    .line 122
    iput v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mGetSmsCount:I

    const-wide/16 v1, 0xfff

    .line 128
    iput-wide v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mMaxSmsIndex:J

    .line 130
    iput v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepIndex:I

    .line 132
    iput v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTemStepIndex:I

    const/16 v1, 0xa

    .line 134
    iput v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepCount:I

    .line 137
    iput-boolean v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIsSyncingSms:Z

    .line 142
    iput-boolean v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bMMGLFlag:Z

    .line 147
    iput v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSyncState:I

    .line 150
    iput-boolean v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bSppConnectAngain:Z

    const/4 v0, 0x1

    .line 152
    iput v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTryConnectCount:I

    .line 154
    iput v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTryCommandCount:I

    .line 170
    new-instance v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$1;-><init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimerHandler:Landroid/os/Handler;

    .line 300
    new-instance v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$7;-><init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mServiceHandler:Landroid/os/Handler;

    .line 530
    new-instance v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$8;-><init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mManager:Lcom/autochips/bluetooth/dundt/ISMSSyncManager$Stub;

    .line 1040
    new-instance v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$9;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$9;-><init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppConnection:Landroid/content/ServiceConnection;

    .line 1061
    new-instance v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$10;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$10;-><init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSMSCallback:Landroid/bluetooth/IDunCallback$Stub;

    .line 1088
    new-instance v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$11;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$11;-><init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private CreateConnect(I)V
    .locals 3

    .line 625
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->SetCurProfile(I)V

    .line 627
    iget-boolean v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 631
    iput-boolean v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIsSyncingSms:Z

    if-ne v0, p1, :cond_2

    .line 634
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->isHfConnected()Z

    move-result p1

    const/16 v1, 0x384

    if-eqz p1, :cond_1

    const-string p1, "Connect to HF profile"

    .line 635
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    .line 636
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    iget-boolean v2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIsSyncingSms:Z

    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->setSyncObject(Z)V

    .line 637
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p1, "[HFP] HF profile is not connected"

    .line 639
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 640
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    .line 643
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/spp/SppService;->setSyncObject(Z)V

    const-string p1, "Connect to SPP profile"

    .line 644
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    .line 647
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 650
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 652
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_BTAddr:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/autochips/bluetooth/spp/SppService;->connect(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne v0, p1, :cond_5

    .line 655
    :try_start_1
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunService:Landroid/bluetooth/IBluetoothDunDt;

    if-eqz p1, :cond_4

    .line 656
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunService:Landroid/bluetooth/IBluetoothDunDt;

    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Landroid/bluetooth/IBluetoothDunDt;->connect(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :cond_4
    const-string p1, "please enable DUN first"

    .line 658
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 661
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 665
    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.autochips.bluetooth.dundt.SmsSyncManagerService.action.not_support_download_sms"

    .line 666
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private GetFactory(I)V
    .locals 3

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetFactory("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 711
    iget-boolean v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    if-eqz v0, :cond_0

    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->SetCurProfile(I)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 718
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetManufactor()Ljava/lang/String;

    move-result-object p1

    .line 719
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 720
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 721
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    const/16 v2, 0x14

    invoke-virtual {v1, p1, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 723
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v0, 0x2af9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 724
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 725
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ReadPbAtResponse()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AT_Respond"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 727
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 728
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 730
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->cleanTimerTask()V

    const-string p1, "[AT+CGMI] get factory cmd fail"

    .line 731
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    .line 732
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->GetSerial(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private GetMemoryStorage(I)V
    .locals 5

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetMemoryStorage with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 773
    iget-boolean v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Set Cur AT Cmd is"

    const-string v1, "AT CMD is:"

    const/4 v2, 0x2

    const/16 v3, 0x1e

    if-ne v2, p1, :cond_1

    const-string p1, "GetMemoryStorage with SPP profile"

    .line 778
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 779
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSMSCurPos()Ljava/lang/String;

    move-result-object p1

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne v4, p1, :cond_5

    .line 785
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_manufoctor:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v0, "MTK"

    .line 787
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_manufoctor:Ljava/lang/String;

    const-string v0, "SAMSUNG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 789
    :cond_2
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    return-void

    .line 794
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSMSCurPos()Ljava/lang/String;

    move-result-object p1

    .line 795
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0, v3}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 796
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v0, p1, v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "SmsSyncManagerService"

    const-string v0, "[AT+CPMS] get momory storage cmd fail"

    .line 798
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_6

    const-string p1, "[AT+CPMS] no respond,wait......"

    .line 801
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne v2, p1, :cond_6

    const-string p1, "GetMemoryStorage with DUN profile"

    .line 804
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 805
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSMSCurPos()Ljava/lang/String;

    move-result-object p1

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 807
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunService:Landroid/bluetooth/IBluetoothDunDt;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothDunDt;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 812
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method private GetSerial(I)V
    .locals 3

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetSerial("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 740
    iget-boolean v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    if-eqz v0, :cond_0

    return-void

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->SetCurProfile(I)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 747
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSerial()Ljava/lang/String;

    move-result-object p1

    .line 748
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 749
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 750
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    const/16 v2, 0x14

    invoke-virtual {v1, p1, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 752
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v0, 0x2af9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 753
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 754
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ReadPbAtResponse()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AT_Respond"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 756
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->ResetPbAtResponse()V

    .line 757
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 759
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->cleanTimerTask()V

    const-string p1, "[AT+CGMM] get serial cmd fail"

    .line 760
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    .line 761
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->CreateConnect(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private GetSms(II)Z
    .locals 5

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetSMS("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 947
    iget-boolean v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_manufoctor:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v3, "Motorola"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_manufoctor:Ljava/lang/String;

    const-string v3, "motorola"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_manufoctor:Ljava/lang/String;

    const-string v3, "MOTOROLA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 956
    :cond_1
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->cur:I

    iget-object v3, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 957
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIndexArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->cur:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 v0, p2, 0x1

    .line 958
    iput v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepIndex:I

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index is: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Array is: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIndexArray:Ljava/util/ArrayList;

    iget v4, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->cur:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 961
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->cur:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->cur:I

    :cond_2
    const-string v0, ""

    const/4 v3, 0x2

    const/16 v4, 0x24

    if-ne v3, p1, :cond_3

    .line 966
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSMSRec(I)Ljava/lang/String;

    move-result-object p1

    .line 967
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v4}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 968
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setRespondString(Ljava/lang/String;)V

    .line 969
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    return v2

    :cond_3
    if-ne v2, p1, :cond_5

    .line 973
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSMSRec(I)Ljava/lang/String;

    move-result-object p1

    .line 974
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v4}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 975
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {p2, p1, v3}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_4

    .line 977
    invoke-direct {p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->cleanTimerTask()V

    .line 978
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->GetSmsRecord(I)V

    .line 979
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepIndex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTemStepIndex:I

    :cond_4
    return v2

    :cond_5
    const/4 v3, 0x3

    if-ne v3, p1, :cond_6

    .line 983
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSMSRec(I)Ljava/lang/String;

    move-result-object p1

    .line 984
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v4}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 985
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setRespondString(Ljava/lang/String;)V

    .line 986
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set Cur AT Cmd is"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 988
    :try_start_0
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunService:Landroid/bluetooth/IBluetoothDunDt;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/bluetooth/IBluetoothDunDt;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 990
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v2

    :cond_6
    return v1
.end method

.method private GetSmsList(II)Z
    .locals 4

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetSMSList("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    const-string v0, ""

    const/16 v1, 0x22

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    .line 853
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSMSRecByType(I)Ljava/lang/String;

    move-result-object p1

    .line 854
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 855
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setRespondString(Ljava/lang/String;)V

    .line 856
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    return v2

    :cond_0
    const/4 v3, 0x3

    if-ne v2, p1, :cond_3

    .line 859
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSMSRecByType(I)Ljava/lang/String;

    move-result-object p1

    .line 860
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 861
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    const/4 v0, 0x5

    invoke-virtual {p2, p1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v2, :cond_1

    .line 863
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendPbAtCommandWithResult: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " OK"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne v3, p2, :cond_2

    const-string p1, "[ATCMD] hf send command get sms record  fail"

    .line 865
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    .line 866
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    goto :goto_0

    :cond_2
    const-string p1, "[ATCMD] hf get sms list fail"

    .line 868
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    .line 869
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    :goto_0
    return v2

    :cond_3
    if-ne v3, p1, :cond_4

    .line 873
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATGetSMSRecByType(I)Ljava/lang/String;

    move-result-object p1

    .line 874
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v1}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 875
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setRespondString(Ljava/lang/String;)V

    .line 876
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set Cur AT Cmd is"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 878
    :try_start_0
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunService:Landroid/bluetooth/IBluetoothDunDt;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/bluetooth/IBluetoothDunDt;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 880
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private GetSmsListByMMGL(II)Z
    .locals 5

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]GetSMSList("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 897
    iget-boolean v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const-string v2, ""

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-ne v0, p1, :cond_1

    .line 902
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATSetSMSRecLstByMMGL(I)Ljava/lang/String;

    move-result-object p1

    .line 903
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v3}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 904
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v2}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setRespondString(Ljava/lang/String;)V

    .line 905
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    return v4

    :cond_1
    const/4 v0, 0x3

    if-ne v4, p1, :cond_5

    .line 908
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATSetSMSRecLstByMMGL(I)Ljava/lang/String;

    move-result-object p1

    .line 909
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v3}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 910
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    const/16 v1, 0x28

    invoke-virtual {p2, p1, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommandWithResult(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_2

    .line 912
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendPbAtCommandWithResult: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " OK"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v0, p2, :cond_3

    const-string p1, "[AT+MMGL] hf send command get sms record  fail"

    .line 914
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    .line 915
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    .line 917
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    goto :goto_0

    :cond_4
    const-string p1, "[ATCMD] hf get index list no respond,wait....."

    .line 919
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_5
    if-ne v0, p1, :cond_6

    .line 923
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATSetSMSRecLstByMMGL(I)Ljava/lang/String;

    move-result-object p1

    .line 924
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v3}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 925
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {p2, v2}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setRespondString(Ljava/lang/String;)V

    .line 926
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set Cur AT Cmd is"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 928
    :try_start_0
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunService:Landroid/bluetooth/IBluetoothDunDt;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/bluetooth/IBluetoothDunDt;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 930
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return v4

    :cond_6
    return v1
.end method

.method private GetSmsRecord(I)V
    .locals 4

    const-string/jumbo v0, "to get sms record"

    .line 821
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 823
    iget-boolean v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    if-eqz v0, :cond_0

    return-void

    .line 827
    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepIndex:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mMaxSmsIndex:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mGetSmsCount:I

    iget v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSmsCount:I

    if-ge v0, v1, :cond_1

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGetSmsCount is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mGetSmsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mSmsCount is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSmsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 829
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->SendTimerTask(I)V

    .line 830
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepIndex:I

    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->GetSms(II)Z

    goto :goto_0

    :cond_1
    const-string p1, "download finish"

    .line 832
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 833
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mGetSmsCount:I

    if-lez p1, :cond_2

    const/4 p1, 0x1

    .line 834
    iput-boolean p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIsSmsSyncFinish:Z

    .line 835
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autochips.bluetooth.dundt.SmsSyncManagerService.action.download_finish"

    .line 836
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 839
    iput-boolean p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    .line 840
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private ParseRespond()V
    .locals 11

    const-string v0, "+ParseRespond"

    .line 1106
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getCurATCmd()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/16 v1, 0x1e

    const-string v2, "MOTOROLA"

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_12

    const/16 v1, 0x24

    const-string v7, "Record duplicate"

    const-string v8, "com.autochips.bluetooth.dundt.SmsSyncManagerService.action.download_finish"

    const-wide/16 v9, 0x0

    if-eq v0, v1, :cond_c

    const-string v1, "SmsSyncManagerService"

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_6

    const/16 v1, 0x21

    if-eq v0, v1, :cond_4

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->ParseCMGL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1194
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getSmsRecsList()Ljava/util/List;

    move-result-object v0

    .line 1195
    new-instance v1, Lcom/autochips/bluetooth/dundt/SMSRecord;

    invoke-direct {v1}, Lcom/autochips/bluetooth/dundt/SMSRecord;-><init>()V

    .line 1196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS Record count is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1197
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_2

    .line 1199
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    iget v2, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->iIndex:I

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setIndex(I)V

    .line 1200
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    iget-object v2, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setType(I)V

    .line 1201
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    iget-object v2, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sTelNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setPhoneNum(Ljava/lang/String;)V

    .line 1202
    iget-object v2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    iget-wide v3, v3, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->lTimeMillis:J

    invoke-virtual {v2, v3, v4}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getFormatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setTime(Ljava/lang/String;)V

    .line 1203
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    iget-object v2, v2, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setBody(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v1}, Lcom/autochips/bluetooth/dundt/SMSRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1205
    iget-object v2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v2, v1}, Lcom/autochips/bluetooth/util/BTDBAdapter;->insertOneSmsRecord(Lcom/autochips/bluetooth/dundt/SMSRecord;)J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-gez v2, :cond_1

    .line 1207
    invoke-direct {p0, v7}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1210
    :cond_2
    iput-boolean v6, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIsSmsSyncFinish:Z

    .line 1211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1212
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1213
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1215
    iput-boolean v6, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    .line 1216
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "parse CMGL error,break;"

    .line 1218
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    .line 1219
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_2

    :cond_4
    const-string v0, "++ParseMMGL"

    .line 1227
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->ParseMMGL()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1230
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getSmsIndexList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIndexArray:Ljava/util/ArrayList;

    .line 1231
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 1232
    iput-boolean v6, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bMMGLFlag:Z

    .line 1233
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->GetSmsRecord(I)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "parse MMGL error,break;"

    .line 1236
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    .line 1237
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_2

    .line 1130
    :cond_6
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseCGMM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_serial:Ljava/lang/String;

    .line 1131
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_serial = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_serial:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_7
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_serial:Ljava/lang/String;

    const-string v1, "MB526"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    .line 1133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autochips.bluetooth.dundt.SmsSyncManagerService.action.not_support_download_sms"

    .line 1134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1137
    :cond_8
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_serial:Ljava/lang/String;

    const-string v1, "V8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1138
    iput-object v2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_manufoctor:Ljava/lang/String;

    .line 1140
    :cond_9
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->CreateConnect(I)V

    goto/16 :goto_2

    .line 1122
    :cond_a
    iput-boolean v5, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bMMGLFlag:Z

    .line 1123
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseCGMI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_manufoctor:Ljava/lang/String;

    .line 1124
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_manufoctor = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_manufoctor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_b
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->GetSerial(I)V

    goto/16 :goto_2

    :cond_c
    const-string v0, "++ParseCMGR"

    .line 1152
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->ParseCMGR()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1155
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getOneSmsRec()Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1157
    new-instance v1, Lcom/autochips/bluetooth/dundt/SMSRecord;

    invoke-direct {v1}, Lcom/autochips/bluetooth/dundt/SMSRecord;-><init>()V

    .line 1158
    iget v2, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->iIndex:I

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setIndex(I)V

    .line 1159
    iget-object v2, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setType(I)V

    .line 1160
    iget-object v2, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sTelNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setPhoneNum(Ljava/lang/String;)V

    .line 1161
    iget-object v2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    iget-wide v3, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->lTimeMillis:J

    invoke-virtual {v2, v3, v4}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getFormatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setTime(Ljava/lang/String;)V

    .line 1162
    iget-object v0, v0, Lcom/autochips/bluetooth/util/PbSyncATParser$BT_SMS_REC_PARAM_T;->sContent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/dundt/SMSRecord;->setBody(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v1}, Lcom/autochips/bluetooth/dundt/SMSRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/util/BTDBAdapter;->insertOneSmsRecord(Lcom/autochips/bluetooth/dundt/SMSRecord;)J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-gez v0, :cond_d

    .line 1166
    invoke-direct {p0, v7}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    .line 1168
    :cond_d
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mGetSmsCount:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mGetSmsCount:I

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGetSmsCount is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mGetSmsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1171
    :cond_e
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mGetSmsCount:I

    iget v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepCount:I

    rem-int v1, v0, v1

    if-nez v1, :cond_f

    .line 1172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autochips.bluetooth.dundt.SmsSyncManagerService.action.step_download"

    .line 1173
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    iget v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepCount:I

    const-string v2, "com.autochips.bluetooth.dundt.SmsSyncManagerService.extra.sms_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1175
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1176
    :cond_f
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mGetSmsCount:I

    iget v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSmsCount:I

    if-ne v0, v1, :cond_1a

    .line 1177
    :cond_10
    iput-boolean v6, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIsSmsSyncFinish:Z

    .line 1178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1179
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1182
    iput-boolean v6, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    .line 1183
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    goto/16 :goto_2

    :cond_11
    const-string v0, "parse CMGR error,break;"

    .line 1186
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1243
    :cond_12
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseCPMS()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1245
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->getSmsCount()I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSmsCount:I

    if-lez v0, :cond_16

    .line 1248
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_manufoctor:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v1, "Motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_manufoctor:Ljava/lang/String;

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_manufoctor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_14

    .line 1252
    :cond_13
    iput-boolean v5, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bMMGLFlag:Z

    const-wide/32 v0, 0xc350

    .line 1253
    iput-wide v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mMaxSmsIndex:J

    const-string v0, "It is Motorola series phone,first execute AT+MMGL command"

    .line 1254
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1255
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0, v3}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->GetSmsListByMMGL(II)Z

    goto :goto_2

    .line 1257
    :cond_14
    iput-boolean v6, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bMMGLFlag:Z

    .line 1259
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSmsCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_15

    mul-int/2addr v0, v4

    int-to-long v0, v0

    .line 1260
    iput-wide v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mMaxSmsIndex:J

    goto :goto_1

    :cond_15
    const-wide/16 v0, 0xc8

    .line 1262
    iput-wide v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mMaxSmsIndex:J

    .line 1264
    :goto_1
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->GetSmsRecord(I)V

    goto :goto_2

    :cond_16
    if-nez v0, :cond_1a

    .line 1267
    iput-boolean v6, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIsSmsSyncFinish:Z

    .line 1268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autochips.bluetooth.dundt.SmsSyncManagerService.action.sms_count_zero"

    .line 1269
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1270
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1272
    iput-boolean v6, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    .line 1273
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    goto :goto_2

    :cond_17
    const-string v0, "parse CPMS error,break;"

    .line 1276
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    .line 1277
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    goto :goto_2

    .line 1110
    :cond_18
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/PbSyncATParser;->parseATE0()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x3

    .line 1112
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->SendTimerTask(I)V

    .line 1113
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->GetMemoryStorage(I)V

    goto :goto_2

    :cond_19
    const-string v0, "Echo parer fail"

    .line 1115
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    .line 1116
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    :cond_1a
    :goto_2
    return-void
.end method

.method private RemoveConnect(I)V
    .locals 2

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]RemoveConnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const-string p1, "disconnect HF!"

    .line 1007
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1008
    iput-boolean p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIsSyncingSms:Z

    .line 1009
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-virtual {v1, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->setSyncObject(Z)V

    const/16 p1, 0x385

    .line 1010
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 1012
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/spp/SppService;->disconnect()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 1015
    :try_start_0
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunService:Landroid/bluetooth/IBluetoothDunDt;

    if-eqz p1, :cond_2

    .line 1016
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunService:Landroid/bluetooth/IBluetoothDunDt;

    invoke-interface {p1}, Landroid/bluetooth/IBluetoothDunDt;->disconnect()V

    goto :goto_0

    :cond_2
    const-string p1, "please enable DUN first"

    .line 1018
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1021
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private SendTimerTask(I)V
    .locals 3

    .line 228
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SMS]SendTimerTask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsSyncManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 230
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimer:Ljava/util/Timer;

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 234
    new-instance p1, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$2;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$2;-><init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 242
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimer:Ljava/util/Timer;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 244
    new-instance p1, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$3;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$3;-><init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 253
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimer:Ljava/util/Timer;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x1388

    if-nez p1, :cond_4

    .line 255
    new-instance p1, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$4;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$4;-><init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 263
    iget-object v2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    if-ne v2, p1, :cond_5

    .line 265
    new-instance p1, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$5;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$5;-><init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 273
    iget-object v2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    if-ne v2, p1, :cond_6

    .line 275
    new-instance p1, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$6;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService$6;-><init>(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 283
    iget-object v2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_6
    :goto_0
    return-void
.end method

.method private ServiceGetRecCnt(I)I
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/BTDBAdapter;->getSmsNo(I)I

    move-result p1

    return p1
.end method

.method private ServiceGetRecord(IIILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/dundt/SMSRecord;",
            ">;)Z"
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autochips/bluetooth/util/BTDBAdapter;->getSmsRecords(III)Ljava/util/List;

    move-result-object p1

    .line 478
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iRecCnt is:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", list record size is:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_0

    .line 480
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ne p3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return p2
.end method

.method private SetEcho(IZ)V
    .locals 5

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ATCMD]SetEcho("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 679
    iget-boolean p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "Set Cur AT Cmd is"

    const-string v0, "AT CMD is:"

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    const-string p1, "Set Echo to SPP profile"

    .line 684
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 685
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, v1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATSetEcho(Z)Ljava/lang/String;

    move-result-object p1

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 689
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/spp/SppService;->write([B)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v3, p1, :cond_2

    const-string p1, "[SetEcho] HF"

    .line 691
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 692
    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->SendTimerTask(I)V

    .line 693
    iget p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->GetMemoryStorage(I)V

    goto :goto_0

    :cond_2
    if-ne v4, p1, :cond_3

    const-string p1, "Set Echo to DUN profile"

    .line 695
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 696
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATGen:Lcom/autochips/bluetooth/util/PbSyncATGen;

    invoke-virtual {p1, v1}, Lcom/autochips/bluetooth/util/PbSyncATGen;->GetATSetEcho(Z)Ljava/lang/String;

    move-result-object p1

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/util/PbSyncATParser;->setCurATCmd(I)V

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 701
    :try_start_0
    iget-object p2, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunService:Landroid/bluetooth/IBluetoothDunDt;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/bluetooth/IBluetoothDunDt;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 703
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->cleanTimerTask()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->GetSmsRecord(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTemStepIndex:I

    return p0
.end method

.method static synthetic access$1102(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTemStepIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bStopDownload:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->SendTimerTask(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;IZ)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->SetEcho(IZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSyncState:I

    return p0
.end method

.method static synthetic access$1802(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSyncState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIsSmsSyncFinish:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIsSmsSyncFinish:Z

    return p1
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTryConnectCount:I

    return p0
.end method

.method static synthetic access$2000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSmsCount:I

    return p0
.end method

.method static synthetic access$2002(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSmsCount:I

    return p1
.end method

.method static synthetic access$202(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTryConnectCount:I

    return p1
.end method

.method static synthetic access$210(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I
    .locals 2

    .line 72
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTryConnectCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTryConnectCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;ILjava/lang/Object;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->sendServiceMsg(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIsSyncingSms:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIsSyncingSms:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/spp/SppService;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Lcom/autochips/bluetooth/spp/SppService;)Lcom/autochips/bluetooth/spp/SppService;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppService:Lcom/autochips/bluetooth/spp/SppService;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/util/PbSyncATParser;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mATParser:Lcom/autochips/bluetooth/util/PbSyncATParser;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->ParseRespond()V

    return-void
.end method

.method static synthetic access$2600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bMMGLFlag:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/util/BTDBAdapter;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->cur:I

    return p1
.end method

.method static synthetic access$2902(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mIndexArray:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bSppConnectAngain:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;)Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mHfAtPhonebook:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    return-object p1
.end method

.method static synthetic access$302(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bSppConnectAngain:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->GetFactory(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_remoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_remoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_BTAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->ServiceGetRecCnt(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;IIILjava/util/List;)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->ServiceGetRecord(IIILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Landroid/bluetooth/IBluetoothDunDt;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunService:Landroid/bluetooth/IBluetoothDunDt;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;Landroid/bluetooth/IBluetoothDunDt;)Landroid/bluetooth/IBluetoothDunDt;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunService:Landroid/bluetooth/IBluetoothDunDt;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)Landroid/bluetooth/IDunCallback$Stub;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSMSCallback:Landroid/bluetooth/IDunCallback$Stub;

    return-object p0
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    return p0
.end method

.method static synthetic access$402(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    return p1
.end method

.method static synthetic access$408(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I
    .locals 2

    .line 72
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_CurUsingProfile:I

    return v0
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->RemoveConnect(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->CreateConnect(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mGetSmsCount:I

    return p0
.end method

.method static synthetic access$702(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mGetSmsCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTryCommandCount:I

    return p0
.end method

.method static synthetic access$802(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTryCommandCount:I

    return p1
.end method

.method static synthetic access$810(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I
    .locals 2

    .line 72
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTryCommandCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTryCommandCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepIndex:I

    return p0
.end method

.method static synthetic access$902(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepIndex:I

    return p1
.end method

.method static synthetic access$910(Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;)I
    .locals 2

    .line 72
    iget v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mStepIndex:I

    return v0
.end method

.method private cleanTimerTask()V
    .locals 2

    .line 288
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmsSyncManagerService"

    const-string v1, "cleanTimerTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 291
    iput-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimerTask:Ljava/util/TimerTask;

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 295
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 296
    iput-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mTimer:Ljava/util/Timer;

    :cond_2
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    .line 1298
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmsSyncManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1

    .line 1294
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmsSyncManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendServiceMsg(ILjava/lang/Object;)V
    .locals 2

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SMSSync] sendServiceMsg("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1306
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1307
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1308
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1309
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "[SMSSync]mServiceHandler is null"

    .line 1311
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1028
    sget-boolean v0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmsSyncManagerService"

    const-string v1, "[SMSSync]Enter onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    const-class v0, Lcom/autochips/bluetooth/dundt/ISMSSyncManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1030
    iget-object p1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mManager:Lcom/autochips/bluetooth/dundt/ISMSSyncManager$Stub;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "onCreate"

    .line 491
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 492
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 494
    invoke-static {}, Lcom/autochips/bluetooth/util/BTDBAdapter;->getInstance()Lcom/autochips/bluetooth/util/BTDBAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    .line 495
    invoke-virtual {p0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/util/BTDBAdapter;->setContext(Landroid/content/Context;)V

    .line 497
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter;->open()Lcom/autochips/bluetooth/util/BTDBAdapter;

    .line 499
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autochips/bluetooth/spp/SppService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to bind SPP service"

    .line 501
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    .line 504
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothDunDt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to bind IBluetoothDunDt service"

    .line 505
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->errorLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "onDestroy"

    .line 512
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->printLog(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->m_dbAdapter:Lcom/autochips/bluetooth/util/BTDBAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/BTDBAdapter;->close()V

    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mServiceHandler:Landroid/os/Handler;

    .line 516
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunService:Landroid/bluetooth/IBluetoothDunDt;

    if-eqz v0, :cond_0

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSMSCallback:Landroid/bluetooth/IDunCallback$Stub;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothDunDt;->unregisterCallback(Landroid/bluetooth/IDunCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsSyncManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mSppConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 524
    iget-object v0, p0, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->mDunConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/dundt/SmsSyncManagerService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 525
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
