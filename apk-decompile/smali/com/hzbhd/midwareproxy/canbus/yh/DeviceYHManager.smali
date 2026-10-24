.class public Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "DeviceYHManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback;,
        Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$OnDeviceYHChangeListener;
    }
.end annotation


# static fields
.field private static final NOTIFYSWCSETTINGS:I

.field private static final TAG:Ljava/lang/String;

.field private static mDeviceYHManager:Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;

.field private static mDeviceYHService:Lcom/hzbhd/midwareproxy/binder/service/IDeviceYHInterface;

.field private static mSwcListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$OnDeviceYHChangeListener;",
            "Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->mDeviceYHManager:Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;

    .line 21
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->mDeviceYHService:Lcom/hzbhd/midwareproxy/binder/service/IDeviceYHInterface;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->mSwcListenerMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    .line 89
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->TAG:Ljava/lang/String;

    const-string v1, "SmartPowerService SmartPowerManager"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->getServiceConnection()Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;
    .locals 3

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->TAG:Ljava/lang/String;

    const-string v2, "SmartPowerService SmartPowerManager getInstance"

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->mDeviceYHManager:Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->mDeviceYHManager:Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;

    .line 37
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->TAG:Ljava/lang/String;

    const-string v2, "SmartPowerService SmartPowerManager getInstance 22"

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->mDeviceYHManager:Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;
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
.method public declared-synchronized addOnDeviceYHChangeListener(Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$OnDeviceYHChangeListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->mSwcListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->mSwcListenerMap:Ljava/util/HashMap;

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback;

    invoke-direct {v1, p1}, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$SwcCallback;-><init>(Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager$OnDeviceYHChangeListener;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 85
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public getServiceConnection()Z
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/IDeviceYHInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IDeviceYHInterface;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->mDeviceYHService:Lcom/hzbhd/midwareproxy/binder/service/IDeviceYHInterface;

    .line 122
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->TAG:Ljava/lang/String;

    const-string v1, "IDeviceYHInterface connected"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 125
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->mDeviceYHService:Lcom/hzbhd/midwareproxy/binder/service/IDeviceYHInterface;

    .line 126
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->TAG:Ljava/lang/String;

    const-string v1, "IDeviceYHInterface not connected:"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.device.yh"

    return-object v0
.end method

.method public sendMsg([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->mDeviceYHService:Lcom/hzbhd/midwareproxy/binder/service/IDeviceYHInterface;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IDeviceYHInterface;->sendMsg([B)V

    :cond_0
    return-void
.end method

.method public serviceDied()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    const/4 v0, 0x0

    .line 96
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/yh/DeviceYHManager;->mDeviceYHService:Lcom/hzbhd/midwareproxy/binder/service/IDeviceYHInterface;

    return-void
.end method

.method public serviceReConnected()V
    .locals 0

    .line 101
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    return-void
.end method
