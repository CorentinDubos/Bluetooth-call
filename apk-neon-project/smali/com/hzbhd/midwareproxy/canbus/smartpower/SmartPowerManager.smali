.class public Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;
.super Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.source "SmartPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;,
        Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$OnSmartPowerChangeListener;
    }
.end annotation


# static fields
.field private static final NOTIFYSWCSETTINGS:I

.field private static final TAG:Ljava/lang/String;

.field private static mSmartPowerManager:Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;

.field private static mSmartPowerService:Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

.field private static mSwcListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$OnSmartPowerChangeListener;",
            "Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSmartPowerManager:Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;

    .line 30
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSmartPowerService:Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSwcListenerMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;-><init>()V

    .line 97
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->TAG:Ljava/lang/String;

    const-string v1, "SmartPowerService SmartPowerManager"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->getServiceConnection()Z

    return-void
.end method

.method static synthetic access$000()Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;
    .locals 1

    .line 25
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSmartPowerService:Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;
    .locals 3

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->TAG:Ljava/lang/String;

    const-string v2, "SmartPowerService SmartPowerManager getInstance"

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSmartPowerManager:Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSmartPowerManager:Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;

    .line 46
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->TAG:Ljava/lang/String;

    const-string v2, "SmartPowerService SmartPowerManager getInstance 22"

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSmartPowerManager:Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;
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
.method public declared-synchronized addOnSmartPowerChangeListener(Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$OnSmartPowerChangeListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 90
    :try_start_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSwcListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSwcListenerMap:Ljava/util/HashMap;

    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;

    invoke-direct {v1, p1}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;-><init>(Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$OnSmartPowerChangeListener;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 93
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public getServiceConnection()Z
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->connectService()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSmartPowerService:Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    .line 129
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->TAG:Ljava/lang/String;

    const-string v1, "SmartPowerService connected"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 132
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSmartPowerService:Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    .line 133
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->TAG:Ljava/lang/String;

    const-string v1, "SmartPowerService not connected:"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hzbhd.smartpower"

    return-object v0
.end method

.method public sendMsg([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSmartPowerService:Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;->sendMsg([B)V

    :cond_0
    return-void
.end method

.method public serviceDied()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceDied()V

    const/4 v0, 0x0

    .line 104
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSmartPowerService:Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    return-void
.end method

.method public serviceReConnected()V
    .locals 3

    .line 109
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->serviceReConnected()V

    .line 110
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSmartPowerService:Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSwcListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;

    .line 113
    :try_start_0
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager;->mSmartPowerService:Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    invoke-interface {v2, v1}, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISurgingPowerCallback;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;->access$102(Lcom/hzbhd/midwareproxy/canbus/smartpower/SmartPowerManager$SwcCallback;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 115
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
