.class public Lcom/hzbhd/midwareproxy/park/ParkManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "ParkManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ParkManager"

.field private static mParkClient:Lcom/hzbhd/midware/constant/ParkClient;

.field private static mParkManager:Lcom/hzbhd/midwareproxy/park/ParkManager;

.field private static mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;


# instance fields
.field private getServiceObj:Landroid/os/IBinder;

.field private mIParkCallBackInterface:Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/park/ParkManager;->getServiceObj:Landroid/os/IBinder;

    .line 22
    new-instance v0, Lcom/hzbhd/midwareproxy/park/ParkManager$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/park/ParkManager$1;-><init>(Lcom/hzbhd/midwareproxy/park/ParkManager;)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mIParkCallBackInterface:Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface;

    .line 42
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/park/ParkManager;->getServiceConnection()Z

    return-void
.end method

.method static synthetic access$000()Lcom/hzbhd/midware/constant/ParkClient;
    .locals 1

    .line 15
    sget-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mParkClient:Lcom/hzbhd/midware/constant/ParkClient;

    return-object v0
.end method

.method public static declared-synchronized getAtvManager()Lcom/hzbhd/midwareproxy/park/ParkManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/park/ParkManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/park/ParkManager;->mParkManager:Lcom/hzbhd/midwareproxy/park/ParkManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/hzbhd/midwareproxy/park/ParkManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/park/ParkManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/park/ParkManager;->mParkManager:Lcom/hzbhd/midwareproxy/park/ParkManager;

    .line 53
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/park/ParkManager;->mParkManager:Lcom/hzbhd/midwareproxy/park/ParkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getServiceConnection()Z
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/park/ParkManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/park/ParkManager;->getServiceObj:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const-string v0, "AtvManager"

    const-string v1, "getServiceConnection"

    .line 60
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/park/ParkManager;->getServiceObj:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mIParkCallBackInterface:Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface;

    invoke-interface {v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.park"

    return-object v0
.end method

.method public registerCallBack(Lcom/hzbhd/midware/constant/ParkClient;)V
    .locals 1

    .line 126
    :try_start_0
    sput-object p1, Lcom/hzbhd/midwareproxy/park/ParkManager;->mParkClient:Lcom/hzbhd/midware/constant/ParkClient;

    .line 127
    sget-object p1, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mIParkCallBackInterface:Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface;

    invoke-interface {p1, v0}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendPanoramicParkKey(I)V
    .locals 1

    .line 101
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;->sendPanoramicParkKey(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendPanoramicParkOn(Z)V
    .locals 1

    .line 93
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;->sendPanoramicParkOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendPanoramicParkPos(III)V
    .locals 1

    .line 118
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;->sendPanoramicParkPos(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendPanoramicParkWH(II)V
    .locals 1

    .line 110
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;->sendPanoramicParkWH(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public serviceDied()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/park/ParkManager;->getServiceConnection()Z

    .line 88
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    return-void
.end method

.method public serviceReConnected()V
    .locals 0

    .line 82
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    return-void
.end method

.method public unregisterCalllBack()V
    .locals 1

    .line 135
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hzbhd/midwareproxy/park/ParkManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;->unRegisterCallBack()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
