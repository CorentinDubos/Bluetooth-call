.class public Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "RemoteDrServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;
    }
.end annotation


# static fields
.field private static final MSG_ID_onNMEAChange:I = 0x3e9

.field private static final MSG_ID_onPASCDChange:I = 0x3ea

.field private static final TAG:Ljava/lang/String;

.field private static mRemoteDrService:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

.field private static sInstance:Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;


# instance fields
.field private mINMEAListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/misc/INMEAListener;",
            "Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mINMEAListeners:Ljava/util/HashMap;

    .line 33
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->getServiceConnection()Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->sInstance:Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->sInstance:Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;

    .line 41
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mRemoteDrService:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 42
    monitor-exit v0

    return-object v1

    .line 45
    :cond_1
    :try_start_1
    sget-object v1, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->sInstance:Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;
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
.method public addRemoteDrListener(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;)V
    .locals 1

    .line 67
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mRemoteDrService:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->addRemoteDrListener(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getServiceConnection()Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mRemoteDrService:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mRemoteDrService:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.remotedr"

    return-object v0
.end method

.method public registerNMEACallback(ILcom/hzbhd/midwareproxy/misc/aidl/INMEACallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mRemoteDrService:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->registerDrLocation(ILcom/hzbhd/midwareproxy/misc/aidl/INMEACallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerOnDrResponseListener(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)V
    .locals 1

    .line 83
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mRemoteDrService:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->registerOnDrResponseListener(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeNMEAListener(Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;Lcom/hzbhd/midwareproxy/misc/INMEAListener;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 213
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNMEAListener: listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mINMEAListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;

    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->unregisterNMEACallback(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    sget-object p2, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "removeNMEAListener: DeadObjectException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "removeNMEAListener,listener==null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeRemoteDrListener(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;)V
    .locals 1

    .line 75
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mRemoteDrService:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->removeRemoteDrListener(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDrProperty(ILjava/lang/String;)V
    .locals 1

    .line 127
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mRemoteDrService:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->setDrProperty(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setNMEAListener(Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;Lcom/hzbhd/midwareproxy/misc/INMEAListener;)V
    .locals 3

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mINMEAListeners:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mINMEAListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager$INMEACallbackTransport;-><init>(Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;Lcom/hzbhd/midwareproxy/misc/INMEAListener;Landroid/os/Looper;)V

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mINMEAListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/dr/DrConstants$DRNMEAListenerType;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->registerNMEACallback(ILcom/hzbhd/midwareproxy/misc/aidl/INMEACallback;)V

    .line 201
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 203
    sget-object p2, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setNMEAListener: DeadObjectException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public unregisterNMEACallback(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mRemoteDrService:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->unregisterDrLocation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterOnDrResponseListener(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)V
    .locals 1

    .line 91
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/misc/RemoteDrServiceManager;->mRemoteDrService:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->unregisterOnDrResponseListener(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
