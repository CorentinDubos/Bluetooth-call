.class public Lcom/autochips/bluetooth/spp/SppService;
.super Landroid/app/Service;
.source "SppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;,
        Lcom/autochips/bluetooth/spp/SppService$ConnectThread;,
        Lcom/autochips/bluetooth/spp/SppService$LocalBinder;
    }
.end annotation


# static fields
.field public static final AT_RESPOND:Ljava/lang/String; = "AT_Respond"

.field private static final DEBUG:Z

.field public static final SPP_ParcelUuid:Landroid/os/ParcelUuid;

.field public static final SPP_RECIEVE_RESPOND:I = 0x2711

.field public static final SPP_RECIEVE_RESPOND_SMS:I = 0x2713

.field public static final SPP_STATE_CHANGE:I = 0x2710

.field public static final SPP_STATE_CHANGE_SMS:I = 0x2712

.field public static final SPP_UUID:Ljava/util/UUID;

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTED_FAILED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED_IND:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SppService"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBinder:Landroid/os/IBinder;

.field private mConnectThread:Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

.field private mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

.field private mHandler:Landroid/os/Handler;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mSetNewCommand:Z

.field private mSetSyncSms:Z

.field private mSppHandler:Landroid/os/Handler;

.field private mState:I

.field private mfgIsSppSerial:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugSPP:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/spp/SppService;->DEBUG:Z

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    .line 30
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    sput-object v1, Lcom/autochips/bluetooth/spp/SppService;->SPP_ParcelUuid:Landroid/os/ParcelUuid;

    .line 33
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/autochips/bluetooth/spp/SppService;->SPP_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mSetNewCommand:Z

    .line 45
    iput-boolean v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mSetSyncSms:Z

    .line 46
    iput-boolean v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mfgIsSppSerial:Z

    .line 86
    new-instance v0, Lcom/autochips/bluetooth/spp/SppService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/spp/SppService$LocalBinder;-><init>(Lcom/autochips/bluetooth/spp/SppService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mBinder:Landroid/os/IBinder;

    .line 69
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/autochips/bluetooth/spp/SppService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/spp/SppService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/autochips/bluetooth/spp/SppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/spp/SppService;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/autochips/bluetooth/spp/SppService;->connectionFailed()V

    return-void
.end method

.method static synthetic access$302(Lcom/autochips/bluetooth/spp/SppService;Lcom/autochips/bluetooth/spp/SppService$ConnectThread;)Lcom/autochips/bluetooth/spp/SppService$ConnectThread;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectThread:Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/spp/SppService;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/autochips/bluetooth/spp/SppService;->mSetNewCommand:Z

    return p0
.end method

.method static synthetic access$402(Lcom/autochips/bluetooth/spp/SppService;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mSetNewCommand:Z

    return p1
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/spp/SppService;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/autochips/bluetooth/spp/SppService;->mfgIsSppSerial:Z

    return p0
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/spp/SppService;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/autochips/bluetooth/spp/SppService;->mSetSyncSms:Z

    return p0
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/spp/SppService;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/autochips/bluetooth/spp/SppService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/spp/SppService;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/autochips/bluetooth/spp/SppService;->mSppHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/autochips/bluetooth/spp/SppService;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/autochips/bluetooth/spp/SppService;->connectionLost()V

    return-void
.end method

.method private connectionFailed()V
    .locals 2

    .line 238
    sget-boolean v0, Lcom/autochips/bluetooth/spp/SppService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SppService"

    const-string v1, "connectionFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    .line 239
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/spp/SppService;->setState(I)V

    return-void
.end method

.method private connectionLost()V
    .locals 2

    .line 246
    sget-boolean v0, Lcom/autochips/bluetooth/spp/SppService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SppService"

    const-string v1, "[SPP] phone disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    .line 247
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/spp/SppService;->setState(I)V

    return-void
.end method

.method private declared-synchronized setState(I)V
    .locals 3

    monitor-enter p0

    .line 116
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/spp/SppService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/bluetooth/spp/SppService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iput p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mState:I

    .line 120
    iget-boolean v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mSetSyncSms:Z

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 121
    sget-boolean v0, Lcom/autochips/bluetooth/spp/SppService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SppService"

    const-string v2, "Sent to PB"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 124
    :cond_2
    sget-boolean v0, Lcom/autochips/bluetooth/spp/SppService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SppService"

    const-string v2, "Sent to SMS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mSppHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized connect(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    .line 158
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/spp/SppService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 162
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/autochips/bluetooth/spp/SppService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    sget-boolean p2, Lcom/autochips/bluetooth/spp/SppService;->DEBUG:Z

    if-eqz p2, :cond_1

    const-string p2, "SppService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not paired, pair first!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_1
    monitor-exit p0

    return-void

    .line 168
    :cond_2
    :try_start_1
    iget p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 169
    iget-object p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectThread:Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectThread:Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->cancel()V

    iput-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectThread:Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    .line 173
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->cancel()V

    iput-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    .line 176
    :cond_4
    new-instance p1, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p1, p0, v0, p2}, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;-><init>(Lcom/autochips/bluetooth/spp/SppService;Landroid/bluetooth/BluetoothDevice;Z)V

    iput-object p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectThread:Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    .line 177
    invoke-virtual {p1}, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->start()V

    .line 178
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/spp/SppService;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized connected(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 197
    :try_start_0
    sget-boolean p2, Lcom/autochips/bluetooth/spp/SppService;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "SppService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected, Socket Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object p2, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectThread:Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectThread:Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->cancel()V

    iput-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectThread:Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    .line 203
    :cond_1
    iget-object p2, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->cancel()V

    iput-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    .line 206
    :cond_2
    new-instance p2, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    invoke-direct {p2, p0, p1, p3}, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;-><init>(Lcom/autochips/bluetooth/spp/SppService;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    .line 207
    invoke-virtual {p2}, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p1, 0x64

    .line 209
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x2

    .line 214
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/spp/SppService;->setState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnect()V
    .locals 2

    monitor-enter p0

    .line 182
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/spp/SppService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SppService"

    const-string/jumbo v1, "spp disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->cancel()V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    :cond_1
    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/spp/SppService;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    .line 132
    :try_start_0
    iget v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    const-string v0, "SPP Service"

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mState:I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectThread:Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/autochips/bluetooth/spp/SppService$ConnectThread;->cancel()V

    .line 95
    iput-object v1, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectThread:Lcom/autochips/bluetooth/spp/SppService$ConnectThread;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->cancel()V

    .line 100
    iput-object v1, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    :cond_1
    return-void
.end method

.method public declared-synchronized setHandler(Landroid/os/Handler;)V
    .locals 0

    monitor-enter p0

    .line 136
    :try_start_0
    iput-object p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSppHandler(Landroid/os/Handler;)V
    .locals 0

    monitor-enter p0

    .line 140
    :try_start_0
    iput-object p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mSppHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSppType(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mfgIsSppSerial:Z

    return-void
.end method

.method public declared-synchronized setSyncObject(Z)V
    .locals 3

    monitor-enter p0

    .line 144
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/spp/SppService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncObject param is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iput-boolean p1, p0, Lcom/autochips/bluetooth/spp/SppService;->mSetSyncSms:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([B)V
    .locals 2

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/spp/SppService;->mConnectedThread:Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;

    .line 229
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/spp/SppService$ConnectedThread;->write([B)V

    return-void

    :catchall_0
    move-exception p1

    .line 229
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
