.class public Lcom/hzbhd/midwareproxy/dtv/DTVManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "DTVManager.java"


# static fields
.field private static mDTVManager:Lcom/hzbhd/midwareproxy/dtv/DTVManager;

.field private static mService:Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;


# instance fields
.field private getServiceObj:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->getServiceObj:Landroid/os/IBinder;

    .line 19
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->getServiceConnection()Z

    return-void
.end method

.method public static declared-synchronized getDTVManager()Lcom/hzbhd/midwareproxy/dtv/DTVManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/dtv/DTVManager;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->mDTVManager:Lcom/hzbhd/midwareproxy/dtv/DTVManager;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/hzbhd/midwareproxy/dtv/DTVManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/dtv/DTVManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->mDTVManager:Lcom/hzbhd/midwareproxy/dtv/DTVManager;

    .line 26
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 27
    monitor-exit v0

    return-object v1

    .line 30
    :cond_1
    :try_start_1
    sget-object v1, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->mDTVManager:Lcom/hzbhd/midwareproxy/dtv/DTVManager;
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
.method public getServiceConnection()Z
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->getServiceObj:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 37
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.dtv"

    return-object v0
.end method

.method public sendPosition(II)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "sendPosition"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;

    invoke-interface {v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;->sendPosition(II)V
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

.method public sendPositionExtra(I[BII)V
    .locals 1

    .line 93
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;->sendPositionExtra(I[BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendPositionParams(IIII)V
    .locals 3

    const-string v0, " , "

    :try_start_0
    const-string/jumbo v1, "sendPosition"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;->sendPositionParams(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public serviceDied()V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->getServiceConnection()Z

    .line 59
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    return-void
.end method

.method public serviceReConnected()V
    .locals 0

    .line 53
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    return-void
.end method

.method public setDate()V
    .locals 1

    .line 64
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/dtv/DTVManager;->mService:Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/binder/service/IDTVInterface;->setDate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
