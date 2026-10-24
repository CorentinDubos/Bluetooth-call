.class public Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;
.super Ljava/lang/Object;
.source "ServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection$BinderDeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceOperation"


# instance fields
.field private mConnectionManager:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

.field protected mIsConnected:Ljava/lang/Boolean;

.field protected mServiceConnection:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->mServiceConnection:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;

    const/4 v1, 0x1

    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->mIsConnected:Ljava/lang/Boolean;

    .line 17
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->mConnectionManager:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    .line 20
    invoke-static {}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->getServiceConnectionManager()Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->mConnectionManager:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    .line 21
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->registerConnectionListener(Ljava/lang/String;Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;)Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->mConnectionManager:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    return-object p0
.end method


# virtual methods
.method public connectService()Landroid/os/IBinder;
    .locals 9

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "android.os.ServiceManager"

    .line 42
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getService"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->getServiceName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 45
    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->mIsConnected:Ljava/lang/Boolean;

    .line 46
    new-instance v3, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection$BinderDeathRecipient;

    invoke-direct {v3, p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection$BinderDeathRecipient;-><init>(Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;)V

    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_1

    .line 48
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->mIsConnected:Ljava/lang/Boolean;

    .line 49
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->mConnectionManager:Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnectionManager;->onServiceDisconnected(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    .line 52
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v0, :cond_1

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->mIsConnected:Ljava/lang/Boolean;

    goto :goto_2

    .line 58
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->mIsConnected:Ljava/lang/Boolean;

    :goto_2
    return-object v0
.end method

.method public getServiceConnection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isServiceConnected()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/serviceConnection/ServiceConnection;->mIsConnected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public serviceDied()V
    .locals 0

    return-void
.end method

.method public serviceReConnected()V
    .locals 0

    return-void
.end method
