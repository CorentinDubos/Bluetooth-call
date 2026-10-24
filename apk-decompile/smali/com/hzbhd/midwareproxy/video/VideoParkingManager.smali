.class public Lcom/hzbhd/midwareproxy/video/VideoParkingManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "VideoParkingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VideoCallBackImpl;,
        Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "bluetoothManager"

.field private static mVideoManager:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

.field private static mVideoService:Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;


# instance fields
.field private mEventHandler:Landroid/os/Handler;

.field private mParkingCallBackListenrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$ParkingCallBackListenr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    .line 89
    new-instance v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;-><init>(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mEventHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mParkingCallBackListenrs:Ljava/util/List;

    .line 41
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->getServiceConnection()Z

    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mParkingCallBackListenrs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;III)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->reportVideoStatus(III)V

    return-void
.end method

.method static synthetic access$300(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->onParingStateChanged(I)V

    return-void
.end method

.method public static declared-synchronized getVideoParkingManager()Lcom/hzbhd/midwareproxy/video/VideoParkingManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mVideoManager:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mVideoManager:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    .line 35
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mVideoManager:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private onParingStateChanged(I)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mEventHandler:Landroid/os/Handler;

    sget-object v1, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->onParingStateChanged:Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private reportVideoStatus(III)V
    .locals 2

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "videoType"

    .line 124
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "videoState"

    .line 125
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "videoFormat"

    .line 126
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mEventHandler:Landroid/os/Handler;

    sget-object p2, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->reportVideoStatus:Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->ordinal()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public getParkingState()I
    .locals 2

    .line 177
    sget-object v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mVideoService:Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 181
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;->getParingState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public getServiceConnection()Z
    .locals 4

    .line 51
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "bluetoothManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mVideoService:Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    .line 55
    :try_start_0
    new-instance v3, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VideoCallBackImpl;

    invoke-direct {v3, p0, v2}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VideoCallBackImpl;-><init>(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;)V

    invoke-interface {v0, v3}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;->registerParkingCallback(Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const-string v0, "BluetoothService connected1:"

    .line 59
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 62
    :cond_0
    sput-object v2, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mVideoService:Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    const-string v0, "BluetoothService not connected:"

    .line 63
    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.video"

    return-object v0
.end method

.method public getVideoFotmat(I)I
    .locals 2

    .line 165
    sget-object v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mVideoService:Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 169
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;->getVideoFotmat(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public getVideoState(I)I
    .locals 2

    .line 153
    sget-object v0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mVideoService:Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 157
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;->getVideoState(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public registerParkingCallBackListenrs(Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$ParkingCallBackListenr;)V
    .locals 1

    .line 74
    monitor-enter p1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mParkingCallBackListenrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mParkingCallBackListenrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unRegisterParkingCallBackListenrs(Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$ParkingCallBackListenr;)V
    .locals 1

    .line 82
    monitor-enter p1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mParkingCallBackListenrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->mParkingCallBackListenrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
