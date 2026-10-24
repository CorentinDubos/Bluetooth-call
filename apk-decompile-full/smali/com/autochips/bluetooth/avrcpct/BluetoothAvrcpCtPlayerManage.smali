.class public Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;
.super Ljava/lang/Object;
.source "BluetoothAvrcpCtPlayerManage.java"


# static fields
.field public static final ACTION_MEDIA_DATA_UPDATE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.action.ACTION_MEDIA_DATA_UPDATE"

.field public static final ACTION_PLAYBACK_DATA_UPDATE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.action.ACTION_PLAYBACK_DATA_UPDATE"

.field public static final CMD_GET_ELEMENATTRIBUTES:I = 0x6

.field public static final CMD_GET_PLAYERCAPABILITY:I = 0xb

.field public static final CMD_GET_PLAYERSTATUS:I = 0x7

.field public static final CMD_NEXT:I = 0x4

.field public static final CMD_PAUSE:I = 0x2

.field public static final CMD_PLAY:I = 0x1

.field public static final CMD_PREV:I = 0x3

.field public static final CMD_REG_NOTIFICATION_PLAYBACK_POS_CHANGED:I = 0xa

.field public static final CMD_REG_NOTIFICATION_PLAYBACK_STATUS_CHANGED:I = 0x8

.field public static final CMD_REG_NOTIFICATION_TRACK_CHANGED:I = 0x9

.field public static final CMD_RESERVED:I = 0x0

.field public static final CMD_STOP:I = 0x5

.field private static DEBUG:Z = false

.field public static final MEDIA_ALBUM:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEIDA_ALBUM"

.field public static final MEDIA_ARTIST:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_ARTIST"

.field public static final MEDIA_LENGTH:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_LENGTH"

.field public static final MEDIA_POSITION:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_POSITION"

.field public static final MEDIA_TITLE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_TITLE"

.field public static final PAUSED:B = 0x2t

.field public static final PLAYBACK_STATUS:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.PLAYBACK_STATUS"

.field public static final PLAYING:B = 0x1t

.field public static final STOPPED:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "BluetoothAvrcpCtPlayerManage"

.field private static mInstance:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

.field private static mPlayerUtility:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugMusic:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage$1;-><init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mConnection:Landroid/content/ServiceConnection;

    .line 135
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mContext:Landroid/content/Context;

    const-class v3, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BluetoothAvrcpCtPlayerManage"

    const-string v1, "Could not bind to Bluetooth avrcp ct playermanage Service"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-direct {v0, p1, p0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;-><init>(Landroid/content/Context;Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;)V

    sput-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mPlayerUtility:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;)Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    return-object p0
.end method

.method static synthetic access$002(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;)Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    return-object p1
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;
    .locals 2

    .line 120
    const-class v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mInstance:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mInstance:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    .line 125
    :cond_0
    sget-object p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mInstance:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 702
    sget-boolean v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public backward(Ljava/lang/String;)Z
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    const-string v1, "BluetoothAvrcpCtPlayerManage"

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playBackward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 244
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 163
    iput-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mConnection:Landroid/content/ServiceConnection;

    .line 166
    :cond_0
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mInstance:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_1

    .line 167
    sput-object v1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mInstance:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fastFoward(Ljava/lang/String;)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 276
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playFastForward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 279
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 280
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public forward(Ljava/lang/String;)Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 222
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playForward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 225
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 226
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getA2dpAddr()Ljava/lang/String;
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 511
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->getA2dpSourceAddr()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 512
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Proxy not attached to service"

    .line 514
    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getA2dpAudioStatus()I
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 611
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->getA2dpAudioStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 612
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Proxy not attached to service"

    .line 614
    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getA2dpSinkStateValue()I
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 495
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->getA2dpSinkState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 496
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Proxy not attached to service"

    .line 498
    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAvrcpRemoteNotifyEvent()I
    .locals 1

    .line 541
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mPlayerUtility:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->getRemoteNotifyEvent()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Proxy not attached to service"

    .line 544
    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getAvrcpStateValue()I
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 527
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->getAvrcpctState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 528
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Proxy not attached to service"

    .line 530
    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCapabilities(B)Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 405
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playgetCapabilities(B)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 406
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 408
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 409
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getElementAttributes(JB[I)Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 313
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playgetElementAttributes(JB[I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 314
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothAvrcpCtPlayerManage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 316
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 317
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getItemAttributes(BJCB[I)Z
    .locals 7

    .line 368
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 370
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playgetItemAttributes(BJCB[I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 371
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothAvrcpCtPlayerManage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 373
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 374
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getPlayerStatus()Z
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 331
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playgetPlayerStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Proxy not attached to service"

    .line 334
    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPosChangedEventStatus()I
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 573
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->getPosChangedEventStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 574
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Proxy not attached to service"

    .line 576
    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackChangedEventStatus()I
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 557
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->getTrackChangedEventStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 558
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Proxy not attached to service"

    .line 560
    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 561
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUtility()Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;
    .locals 1

    .line 587
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mPlayerUtility:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    return-object v0
.end method

.method public informDisplaybaleCharset(BC)Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 386
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playinformDisplaybaleCharset(BC)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 387
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothAvrcpCtPlayerManage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 389
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 390
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public notifyResume()Z
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 453
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playonResume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 454
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Proxy not attached to service"

    .line 456
    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 460
    :goto_0
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mPlayerUtility:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->onMusicPlayerStateChanged(Z)V

    :cond_1
    return v1
.end method

.method public notifyRevoke()Z
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 474
    :try_start_0
    invoke-interface {v0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playonRevoke()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 475
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Proxy not attached to service"

    .line 477
    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 481
    :goto_0
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mPlayerUtility:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 482
    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->onMusicPlayerStateChanged(Z)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public pause(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pause()"

    .line 180
    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    const-string v1, "BluetoothAvrcpCtPlayerManage"

    if-eqz v0, :cond_0

    .line 183
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playPause(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 184
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 186
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public play(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "play()"

    .line 200
    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playContinue(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 206
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 207
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public regResume(Z)Z
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 437
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playregResume(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 438
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 440
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 441
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public registerNotificationReq(BI)Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 354
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playregisterNotificationReq(BI)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 355
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothAvrcpCtPlayerManage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 357
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 358
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public resetAudio(II)I
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 421
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playresetAudio(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 422
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothAvrcpCtPlayerManage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 424
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 425
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public rewind(Ljava/lang/String;)Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    if-eqz v0, :cond_0

    .line 292
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playRewind(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 293
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAvrcpCtPlayerManage"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 295
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 296
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public sendAvrcpCommand(I)V
    .locals 1

    .line 595
    sget-object v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mPlayerUtility:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->sendCommand(I)V

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 598
    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    .line 599
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stop(Ljava/lang/String;)Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->mService:Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;

    const-string v1, "BluetoothAvrcpCtPlayerManage"

    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage;->playStop(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 263
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-boolean p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
