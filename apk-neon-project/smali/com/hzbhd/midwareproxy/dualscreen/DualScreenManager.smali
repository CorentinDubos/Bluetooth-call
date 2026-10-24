.class public Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;
.super Ljava/lang/Object;
.source "DualScreenManager.java"


# static fields
.field public static final SERVICE_NAME_DUAL_SCREEN:Ljava/lang/String; = "service dual screen"

.field private static final TAG:Ljava/lang/String; = "DualScreenManager"

.field private static dualScreenManager:Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;
    .locals 2

    const-class v0, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->dualScreenManager:Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->dualScreenManager:Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;

    .line 14
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->dualScreenManager:Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;
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
.method public checkIsNaviActivity(Ljava/lang/String;)Z
    .locals 1

    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;->checkIsNaviActivity(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;
    .locals 1

    const-string/jumbo v0, "service dual screen"

    .line 18
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    return-object v0
.end method

.method public getNaviDisplayId()I
    .locals 1

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;->getNaviDisplayId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideAll()V
    .locals 1

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;->hideAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public hideInBack()V
    .locals 1

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;->hideInBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public hideInMain()V
    .locals 1

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;->hideInMain()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setIsNeedShowBack(Z)V
    .locals 1

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;->setIsNeedShowBack(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public showInBack()V
    .locals 1

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;->showInBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public showInMain()V
    .locals 1

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;->showInMain()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public showOrHideInBack()V
    .locals 1

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;->showOrHideInBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public showOrHideInMain()V
    .locals 1

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getIDualScreenInterface()Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/hzbhd/midwareproxy/dualscreen/IDualScreenInterface;->showOrHideInMain()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
