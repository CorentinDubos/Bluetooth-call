.class public Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;
.super Ljava/lang/Object;
.source "BluetoothHidAdapter.java"


# static fields
.field private static final ACCELERATION_SCALE_ADJUSTMENT_CONST:D = -0.06

.field private static final AC_REPORT_ID:B = 0x3t

.field private static DEBUG:Z = false

.field private static final DEFAULT_INTERRUPT_LATENCY:I = 0x64

.field public static final HID_ADAPTER_CMD_BACK:I = 0x4

.field public static final HID_ADAPTER_CMD_HOME:I = 0x1

.field public static final HID_ADAPTER_CMD_MENU:I = 0x10

.field public static final HID_ADAPTER_CMD_NEXT:I = 0x80

.field public static final HID_ADAPTER_CMD_PLAY_PAUSE:I = 0x20

.field public static final HID_ADAPTER_CMD_PREVIOS:I = 0x40

.field public static final HID_ADAPTER_CMD_STOP:I = 0x100

.field public static final HID_ADAPTER_CMD_VOLUME_DOWN:I = 0x400

.field public static final HID_ADAPTER_CMD_VOLUME_UP:I = 0x200

.field public static final HID_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.autochips.bluetooth.BluetoothHidService"

.field private static final KEYBOARD_REPORT_ID:B = 0x2t

.field private static final MAX_INTERRUPT_LATENCY:I = 0x1f4

.field private static final MIN_INTERRUPT_LATENCY:I = 0xa

.field private static final MOUSE_REPORT_ID:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "BluetoothHidAdapter"

.field private static mInstance:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;


# instance fields
.field private mACIntAbout2Send:Z

.field private mCMDAbout2Send:I

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

.field private mIntSendThread:Ljava/lang/Thread;

.field private mIntSendThreadStarted:Z

.field private mKBDataAbout2Send:B

.field private mKBIntAbout2Send:Z

.field private mLastMouseTime:J

.field private mMouseIntAbout2Send:Z

.field private mMouseLButtonAbout2Send:B

.field private mMouseXAbout2Send:I

.field private mMouseYAbout2Send:I

.field private mThreadLatency:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget-boolean v0, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugAll:Z

    sget-boolean v1, Lcom/autochips/bluetooth/BtEmulatorDebug;->mDebugHF:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    const/4 v0, 0x0

    .line 75
    sput-object v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mInstance:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThreadStarted:Z

    .line 60
    iput-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThread:Ljava/lang/Thread;

    const/16 v0, 0x64

    .line 61
    iput v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mThreadLatency:I

    .line 63
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseIntAbout2Send:Z

    .line 64
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mACIntAbout2Send:Z

    .line 65
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mKBIntAbout2Send:Z

    .line 66
    iput v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseXAbout2Send:I

    .line 67
    iput v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseYAbout2Send:I

    .line 68
    iput-byte v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseLButtonAbout2Send:B

    .line 69
    iput-byte v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mKBDataAbout2Send:B

    .line 70
    iput v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mCMDAbout2Send:I

    const-wide/16 v2, 0x0

    .line 71
    iput-wide v2, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mLastMouseTime:J

    .line 87
    new-instance v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$1;-><init>(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mConnection:Landroid/content/ServiceConnection;

    .line 106
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    const-string v2, "BluetoothHidAdapter"

    if-eqz v0, :cond_0

    const-string v0, "bindService "

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 110
    sget-boolean p1, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "cannot bindService !!! "

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    sget-boolean p1, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "bindService success"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;JII)D
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->calculateMouseScale(JII)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$102(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;)Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)B
    .locals 0

    .line 32
    iget-byte p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseLButtonAbout2Send:B

    return p0
.end method

.method static synthetic access$1200(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)B
    .locals 0

    .line 32
    iget-byte p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mKBDataAbout2Send:B

    return p0
.end method

.method static synthetic access$1300(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mCMDAbout2Send:I

    return p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mThreadLatency:I

    return p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseIntAbout2Send:Z

    return p0
.end method

.method static synthetic access$302(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseIntAbout2Send:Z

    return p1
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mACIntAbout2Send:Z

    return p0
.end method

.method static synthetic access$402(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mACIntAbout2Send:Z

    return p1
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mKBIntAbout2Send:Z

    return p0
.end method

.method static synthetic access$502(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mKBIntAbout2Send:Z

    return p1
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mLastMouseTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;J)J
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mLastMouseTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThreadStarted:Z

    return p0
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseXAbout2Send:I

    return p0
.end method

.method static synthetic access$900(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseYAbout2Send:I

    return p0
.end method

.method private calculateMouseScale(JII)D
    .locals 5

    const-wide/16 v0, 0x5a

    cmp-long v0, p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_0

    return-wide v1

    :cond_0
    int-to-double v3, p3

    int-to-double p3, p4

    .line 361
    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p3

    long-to-double p1, p1

    div-double/2addr p3, p1

    const-wide p1, 0x408f400000000000L    # 1000.0

    mul-double/2addr p3, p1

    const-wide p1, 0x407f400000000000L    # 500.0

    cmpg-double p1, p3, p1

    if-gtz p1, :cond_1

    return-wide v1

    :cond_1
    const-wide p1, 0x40c1940000000000L    # 9000.0

    cmpl-double p1, p3, p1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    if-ltz p1, :cond_2

    return-wide v3

    :cond_2
    const-wide p1, 0x3f4a36e2eb1c432dL    # 8.0E-4

    mul-double/2addr p3, p1

    const-wide p1, 0x3fb70a3d70a3d70aL    # 0.09

    add-double/2addr p3, p1

    .line 366
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide p3, 0x3fd3333333333333L    # 0.3

    add-double/2addr p1, p3

    const-wide p3, -0x405147ae147ae148L    # -0.06

    add-double/2addr p1, p3

    cmpg-double p3, p1, v1

    if-gtz p3, :cond_3

    return-wide v1

    :cond_3
    cmpl-double p3, p1, v3

    if-ltz p3, :cond_4

    return-wide v3

    :cond_4
    return-wide p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;
    .locals 2

    .line 78
    const-class v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mInstance:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mInstance:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    .line 83
    :cond_0
    sget-object p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mInstance:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 380
    :try_start_0
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThreadStarted:Z

    .line 381
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThread:Ljava/lang/Thread;

    .line 383
    sput-object v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mInstance:Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;

    .line 384
    iget-object v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    .line 385
    sget-boolean v1, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothHidAdapter"

    const-string v2, "+unbindService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 387
    iput-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 134
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidAdapter"

    const-string v1, "connect "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    invoke-interface {v0, p1}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;->connect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :try_start_1
    const-string p1, "BluetoothHidAdapter"

    const-string v0, "Adapter not bind to service!!! "

    .line 139
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 142
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnect()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 152
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidAdapter"

    const-string v1, "disconnect "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    invoke-interface {v0}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;->disconnect()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string v0, "BluetoothHidAdapter"

    const-string v1, "Adapter not bind to service!!! "

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 160
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 118
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidAdapter"

    const-string v1, "+finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized getConnectedAddr()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    invoke-interface {v0}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;->getConnectedAddr()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "BluetoothHidAdapter"

    const-string v1, "Adapter not bind to service!!! "

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 192
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    invoke-interface {v0}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;->isHidConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "BluetoothHidAdapter"

    const-string v1, "Adapter not bind to service!!! "

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 176
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendControlData(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 249
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendControlData cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    invoke-interface {v0}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;->isHidConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThreadStarted:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    iput p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mCMDAbout2Send:I

    const/4 p1, 0x1

    .line 256
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mACIntAbout2Send:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return p1

    .line 251
    :cond_2
    :goto_0
    :try_start_1
    sget-boolean p1, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "BluetoothHidAdapter"

    const-string/jumbo v0, "sendControlData fails."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x0

    .line 252
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mACIntAbout2Send:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendKeyboardData(B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 231
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendKeyboardData key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    invoke-interface {v0}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;->isHidConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThreadStarted:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    iput-byte p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mKBDataAbout2Send:B

    const/4 p1, 0x1

    .line 238
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mKBIntAbout2Send:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return p1

    .line 233
    :cond_2
    :goto_0
    :try_start_1
    sget-boolean p1, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "BluetoothHidAdapter"

    const-string/jumbo v0, "sendKeyboardData fails."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x0

    .line 234
    iput-boolean p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mKBIntAbout2Send:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendMouseData(ZII)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 204
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMouseData button="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",X="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",Y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mHidDeviceUtility:Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;

    invoke-interface {v0}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility;->isHidConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThreadStarted:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    iget-boolean v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseIntAbout2Send:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 212
    iget v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseXAbout2Send:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseXAbout2Send:I

    .line 213
    iget p2, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseYAbout2Send:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseYAbout2Send:I

    goto :goto_0

    .line 215
    :cond_2
    iput p2, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseXAbout2Send:I

    .line 216
    iput p3, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseYAbout2Send:I

    .line 217
    iput-boolean v2, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseIntAbout2Send:Z

    :goto_0
    if-eqz p1, :cond_3

    move v1, v2

    .line 219
    :cond_3
    iput-byte v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseLButtonAbout2Send:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return v2

    .line 207
    :cond_4
    :goto_1
    :try_start_1
    sget-boolean p1, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "BluetoothHidAdapter"

    const-string/jumbo p2, "sendMouseData fails."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_5
    iput-boolean v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mMouseIntAbout2Send:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startHIDSendThread(I)Z
    .locals 2

    monitor-enter p0

    .line 270
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidAdapter"

    const-string/jumbo v1, "startHIDSendThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 272
    sget-boolean p1, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "BluetoothHidAdapter"

    const-string/jumbo v0, "startHIDSendThread has beed started."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x0

    .line 273
    monitor-exit p0

    return p1

    .line 275
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mThreadLatency:I

    const/16 v0, 0x1f4

    if-gt p1, v0, :cond_3

    const/16 v0, 0xa

    if-ge p1, v0, :cond_4

    :cond_3
    const/16 p1, 0x64

    .line 278
    iput p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mThreadLatency:I

    .line 281
    :cond_4
    new-instance p1, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;

    const-string v0, "BluetoothHidAdapter"

    invoke-direct {p1, p0, v0}, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter$2;-><init>(Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 341
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThreadStarted:Z

    .line 342
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopHIDSendThread()V
    .locals 2

    monitor-enter p0

    .line 350
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidAdapter"

    const-string/jumbo v1, "stopHIDSendThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThreadStarted:Z

    .line 352
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidAdapter;->mIntSendThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
