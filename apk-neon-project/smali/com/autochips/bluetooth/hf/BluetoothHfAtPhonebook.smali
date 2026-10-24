.class public Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;
.super Ljava/lang/Object;
.source "BluetoothHfAtPhonebook.java"


# static fields
.field public static final AT_RESPOND:Ljava/lang/String; = "AT_Respond"

.field private static DEBUG:Z = false

.field public static final HFP_RECIEVE_RESPOND:I = 0x2af8

.field public static final HFP_RECIEVE_RESPOND_SMS:I = 0x2af9

.field private static final TAG:Ljava/lang/String; = "BluetoothHfAtPhonebook"

.field private static instance:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;


# instance fields
.field private mCPBRCombStr:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHfPhonebookDownloading:Z

.field private mSetSyncSms:Z

.field private mSmsHandler:Landroid/os/Handler;

.field private mbGetRspFromRawdata:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugHF:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->DEBUG:Z

    .line 31
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    invoke-direct {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->instance:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mCPBRCombStr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mbGetRspFromRawdata:Z

    .line 21
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mSetSyncSms:Z

    .line 28
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, " construct BluetoothHfAtPhonebook"

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private SendMessage(Ljava/lang/String;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x2af8

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "AT_Respond"

    .line 53
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 55
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 57
    :cond_0
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "BluetoothHfAtPhonebook"

    const-string v0, "SendMessage fail ,mHandler is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private SendMessageSms(Ljava/lang/String;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mSmsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x2af9

    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "AT_Respond"

    .line 65
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 67
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mSmsHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 69
    :cond_0
    sget-boolean p1, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "BluetoothHfAtPhonebook"

    const-string v0, "SendMessageSms fail ,mHandler is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000([Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->combineArgs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 11
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->SendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$484(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mCPBRCombStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mCPBRCombStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mHfPhonebookDownloading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->SendMessageSms(Ljava/lang/String;)V

    return-void
.end method

.method private static combineArgs([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 82
    :goto_0
    array-length v1, p0

    sub-int/2addr v1, v3

    if-ge v2, v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;
    .locals 1

    .line 34
    sget-object v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->instance:Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BluetoothHfAtPhonebook"

    .line 74
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public ReadPbAtResponse()Ljava/lang/String;
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mbGetRspFromRawdata:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->getRawData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mCPBRCombStr:Ljava/lang/String;

    .line 250
    :cond_0
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ReadPbAtResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mCPBRCombStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->log(Ljava/lang/String;)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mCPBRCombStr:Ljava/lang/String;

    return-object v0
.end method

.method public ResetPbAtResponse()V
    .locals 1

    const-string v0, ""

    .line 255
    iput-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mCPBRCombStr:Ljava/lang/String;

    .line 256
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->resetRawData()V

    return-void
.end method

.method public initializeHfAtPhonebookParser()V
    .locals 3

    .line 92
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Registering Handsfree AT commands"

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->log(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->getAtParser()Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$1;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;)V

    const-string v2, "+CSCS"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 138
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$2;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$2;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;)V

    const-string v2, "+CPBS"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 150
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$3;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$3;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;)V

    const-string v2, "+CPBR"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 163
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$4;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$4;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;)V

    const-string v2, "+CPMS"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 174
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$5;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$5;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;)V

    const-string v2, "+CMGR"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 185
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$6;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$6;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;)V

    const-string v2, "+MMGL"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 196
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$7;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$7;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;)V

    const-string v2, "+CMGL"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    .line 208
    new-instance v1, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$8;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook$8;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;)V

    const-string v2, "+CMSERROR"

    invoke-virtual {v0, v2, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtParser;->register(Ljava/lang/String;Lcom/autochips/bluetooth/hf/HfAtCommandHandler;)V

    return-void
.end method

.method public isHfConnected()Z
    .locals 1

    .line 220
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, " isHfConnected"

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->log(Ljava/lang/String;)V

    .line 221
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->isHfConnected()Z

    move-result v0

    return v0
.end method

.method public sendPbAtCommand(Ljava/lang/String;)Z
    .locals 2

    .line 225
    sget-boolean v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sendPbAtCommand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mHfPhonebookDownloading:Z

    .line 227
    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->sendURC(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sendPbAtCommandWithResult(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "AT+CGMI"

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AT+CGMM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mbGetRspFromRawdata:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mbGetRspFromRawdata:Z

    .line 237
    :goto_1
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->clearHfAtCmdResult()V

    .line 238
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->sendPbAtCommand(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 239
    invoke-static {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->waitforHfCmdResult(I)I

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    :goto_2
    return p1
.end method

.method public declared-synchronized setHandler(Landroid/os/Handler;)V
    .locals 0

    monitor-enter p0

    .line 38
    :try_start_0
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSmsHandler(Landroid/os/Handler;)V
    .locals 0

    monitor-enter p0

    .line 42
    :try_start_0
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mSmsHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSyncObject(Z)V
    .locals 0

    monitor-enter p0

    .line 46
    :try_start_0
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtPhonebook;->mSetSyncSms:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
