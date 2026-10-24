.class public Lcom/hzbhd/midwareproxy/misc/MiscOperation;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "MiscOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/misc/MiscOperation$ErrorListener;,
        Lcom/hzbhd/midwareproxy/misc/MiscOperation$McuUpdateListener;,
        Lcom/hzbhd/midwareproxy/misc/MiscOperation$MiscOperationCallBackImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mMcuOperation:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

.field private static mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;


# instance fields
.field private final MSG_BATTERY_STATE:I

.field private final MSG_ERROR_REPORTS:I

.field private final MSG_MCU_UPDATE:I

.field private mErrorListener:Lcom/hzbhd/midwareproxy/misc/MiscOperation$ErrorListener;

.field private mEventHandler:Landroid/os/Handler;

.field private mMcuUpdateListener:Lcom/hzbhd/midwareproxy/misc/MiscOperation$McuUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperation:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    .line 21
    sput-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->MSG_MCU_UPDATE:I

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->MSG_ERROR_REPORTS:I

    const/4 v0, 0x2

    .line 87
    iput v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->MSG_BATTERY_STATE:I

    .line 93
    new-instance v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/misc/MiscOperation$1;-><init>(Lcom/hzbhd/midwareproxy/misc/MiscOperation;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mEventHandler:Landroid/os/Handler;

    .line 25
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->getServiceConnection()Z

    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/misc/MiscOperation;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->progressReports(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/hzbhd/midwareproxy/misc/MiscOperation;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->errorReports(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/hzbhd/midwareproxy/misc/MiscOperation;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->batteryThreadStateReports(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/hzbhd/midwareproxy/misc/MiscOperation;)Lcom/hzbhd/midwareproxy/misc/MiscOperation$McuUpdateListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuUpdateListener:Lcom/hzbhd/midwareproxy/misc/MiscOperation$McuUpdateListener;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hzbhd/midwareproxy/misc/MiscOperation;)Lcom/hzbhd/midwareproxy/misc/MiscOperation$ErrorListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mErrorListener:Lcom/hzbhd/midwareproxy/misc/MiscOperation$ErrorListener;

    return-object p0
.end method

.method private batteryThreadStateReports(II)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 148
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 149
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private errorReports(I)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized getMcuOperationInstant()Lcom/hzbhd/midwareproxy/misc/MiscOperation;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperation:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperation:Lcom/hzbhd/midwareproxy/misc/MiscOperation;

    .line 39
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperation:Lcom/hzbhd/midwareproxy/misc/MiscOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isPortrateScreen()Z
    .locals 1

    .line 280
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->isPortrateScreen()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPowerOffStatus()Z
    .locals 1

    .line 223
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->isPowerOffStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isReverse()Z
    .locals 1

    .line 246
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->isReverse()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private progressReports(II)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public decrease()Z
    .locals 1

    .line 201
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->decrease()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public detectRotate(I)V
    .locals 1

    .line 313
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->detectRotate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public detectRotateScreen()V
    .locals 1

    .line 302
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->detectRotateScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getBacklightStatus()I
    .locals 1

    .line 269
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->getBacklightStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getParkingState()Z
    .locals 1

    .line 156
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->getParkingState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceConnection()Z
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->connectService()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    .line 48
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->TAG:Ljava/lang/String;

    const-string v2, "McuOperation Service connected:"

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    new-instance v2, Lcom/hzbhd/midwareproxy/misc/MiscOperation$MiscOperationCallBackImpl;

    invoke-direct {v2, p0, v1}, Lcom/hzbhd/midwareproxy/misc/MiscOperation$MiscOperationCallBackImpl;-><init>(Lcom/hzbhd/midwareproxy/misc/MiscOperation;Lcom/hzbhd/midwareproxy/misc/MiscOperation$1;)V

    invoke-interface {v0, v2}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->registerCallBack(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    sput-object v1, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    .line 58
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->TAG:Ljava/lang/String;

    const-string v1, "McuOperation Service not connected:"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.misc"

    return-object v0
.end method

.method public increase()Z
    .locals 1

    .line 190
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->increase()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public muteSource()Z
    .locals 1

    .line 168
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->muteSource()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notify_Audio_LightOn_status(Ljava/lang/String;Z)V
    .locals 1

    .line 325
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->notify_Audio_LightOn_status(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 329
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public rotateScreen(Z)V
    .locals 1

    .line 292
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->rotateScreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 297
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setVolumeVal(I)Z
    .locals 1

    .line 212
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->setVolumeVal(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public turnOffBacklight()V
    .locals 1

    .line 235
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->turnOffBacklight()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnBacklight()V
    .locals 1

    .line 258
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->turnOnBacklight()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unmuteSource()Z
    .locals 1

    .line 179
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/MiscOperation;->mMcuOperationService:Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IMiscOperationInterface;->unmuteSource()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
