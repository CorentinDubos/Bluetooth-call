.class public Lcom/hzbhd/midwareproxy/atv/AtvManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "AtvManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/atv/AtvManager$HANDLER_MSG;
    }
.end annotation


# static fields
.field public static final KEY_SCAN_FINISHED:Ljava/lang/String; = "scanFinished"

.field public static final STATE_NO_PARKING:I = 0x0

.field public static final STATE_PARKIING:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AtvManager"

.field private static mAtvClient:Lcom/hzbhd/midware/constant/AtvClient;

.field private static mAtvManager:Lcom/hzbhd/midwareproxy/atv/AtvManager;

.field private static mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;


# instance fields
.field private getServiceObj:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mIAtvCallBackInterface:Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->getServiceObj:Landroid/os/IBinder;

    .line 34
    new-instance v0, Lcom/hzbhd/midwareproxy/atv/AtvManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/midwareproxy/atv/AtvManager$1;-><init>(Lcom/hzbhd/midwareproxy/atv/AtvManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/hzbhd/midwareproxy/atv/AtvManager$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/atv/AtvManager$2;-><init>(Lcom/hzbhd/midwareproxy/atv/AtvManager;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mIAtvCallBackInterface:Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;

    .line 109
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/atv/AtvManager;->getServiceConnection()Z

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/atv/AtvManager;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100()Lcom/hzbhd/midware/constant/AtvClient;
    .locals 1

    .line 19
    sget-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mAtvClient:Lcom/hzbhd/midware/constant/AtvClient;

    return-object v0
.end method

.method public static declared-synchronized getAtvManager()Lcom/hzbhd/midwareproxy/atv/AtvManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mAtvManager:Lcom/hzbhd/midwareproxy/atv/AtvManager;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcom/hzbhd/midwareproxy/atv/AtvManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/atv/AtvManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mAtvManager:Lcom/hzbhd/midwareproxy/atv/AtvManager;

    .line 116
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 117
    monitor-exit v0

    return-object v1

    .line 120
    :cond_1
    :try_start_1
    sget-object v1, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mAtvManager:Lcom/hzbhd/midwareproxy/atv/AtvManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getParkingState()Z
    .locals 1

    .line 247
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;->getParkingState()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceConnection()Z
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/atv/AtvManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->getServiceObj:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const-string v0, "AtvManager"

    const-string v1, "getServiceConnection"

    .line 127
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->getServiceObj:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mIAtvCallBackInterface:Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;

    invoke-interface {v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 136
    sput-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.atv"

    return-object v0
.end method

.method public goto_set_channel(I)V
    .locals 1

    .line 221
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;->goto_channel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerCallBack(Lcom/hzbhd/midware/constant/AtvClient;)V
    .locals 1

    .line 230
    :try_start_0
    sput-object p1, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mAtvClient:Lcom/hzbhd/midware/constant/AtvClient;

    .line 231
    sget-object p1, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mIAtvCallBackInterface:Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;

    invoke-interface {p1, v0}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public search_all()V
    .locals 1

    .line 211
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;->search_all()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public search_down_channel()V
    .locals 1

    .line 169
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;->search_down_channel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public search_next_channel()V
    .locals 1

    .line 178
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;->search_next_channel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public search_prev_channel()V
    .locals 1

    .line 187
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;->search_prev_channel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public search_up_channel()V
    .locals 1

    .line 160
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;->search_up_channel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public serviceDied()V
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/atv/AtvManager;->getServiceConnection()Z

    .line 155
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    return-void
.end method

.method public serviceReConnected()V
    .locals 0

    .line 149
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    return-void
.end method

.method public tv_req_info()V
    .locals 1

    .line 203
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;->tv_req_info()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public tv_system_change()V
    .locals 1

    .line 195
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;->tv_system_change()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterCalllBack()V
    .locals 2

    .line 239
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/atv/AtvManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/IAtvInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IAtvCallBackInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
