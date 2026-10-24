.class public abstract Lcom/autochips/dvp/DvdManagerClient;
.super Landroid/dvp/IDvdManagerClient$Stub;
.source "DvdManagerClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DvdManagerClient"

.field protected static mService:Landroid/dvp/IDvdManagerService;


# instance fields
.field protected mDvdBase:Landroid/dvp/IDvdManagerBase;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Landroid/dvp/IDvdManagerClient$Stub;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/autochips/dvp/DvdManagerClient;->mDvdBase:Landroid/dvp/IDvdManagerBase;

    const-string v0, "DvdManagerClient"

    const-string v1, "DvdManagerClient() construct"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :try_start_0
    sget-object v1, Lcom/autochips/dvp/DvdManagerClient;->mService:Landroid/dvp/IDvdManagerService;

    if-nez v1, :cond_0

    const-string v1, "DvdManagerService"

    .line 32
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {v1}, Landroid/dvp/IDvdManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dvp/IDvdManagerService;

    move-result-object v1

    sput-object v1, Lcom/autochips/dvp/DvdManagerClient;->mService:Landroid/dvp/IDvdManagerService;

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService(): mService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/autochips/dvp/DvdManagerClient;->mService:Landroid/dvp/IDvdManagerService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v1, Lcom/autochips/dvp/DvdManagerClient;->mService:Landroid/dvp/IDvdManagerService;

    if-eqz v1, :cond_1

    .line 41
    sget-object v1, Lcom/autochips/dvp/DvdManagerClient;->mService:Landroid/dvp/IDvdManagerService;

    invoke-interface {v1, p0}, Landroid/dvp/IDvdManagerService;->create(Landroid/dvp/IDvdManagerClient;)Landroid/dvp/IDvdManagerBase;

    move-result-object v1

    iput-object v1, p0, Lcom/autochips/dvp/DvdManagerClient;->mDvdBase:Landroid/dvp/IDvdManagerBase;

    const-string v1, "DvdLogicManager(): construct client: mDvdBase"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "DvdLogicManager(): construct mService get null"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DvdLogicManager(): client create fail, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private release()V
    .locals 4

    const-string v0, "DvdManagerClient"

    const-string v1, "release()"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/autochips/dvp/DvdManagerClient;->mDvdBase:Landroid/dvp/IDvdManagerBase;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/autochips/dvp/DvdManagerClient;->mDvdBase:Landroid/dvp/IDvdManagerBase;

    invoke-interface {v1}, Landroid/dvp/IDvdManagerBase;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release(): call DvdManagerBase.release fail, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/autochips/dvp/DvdManagerClient;->mDvdBase:Landroid/dvp/IDvdManagerBase;

    .line 65
    sput-object v0, Lcom/autochips/dvp/DvdManagerClient;->mService:Landroid/dvp/IDvdManagerService;

    return-void
.end method


# virtual methods
.method public closeAudOutput(Z)I
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/autochips/dvp/DvdManagerClient;->mDvdBase:Landroid/dvp/IDvdManagerBase;

    const-string v1, "closeAudOutput "

    const-string v2, "DvdManagerClient"

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " fail for mDvdBase == null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 77
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/dvp/IDvdManagerBase;->closeAudOutput(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " fail, e="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected finalize()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/autochips/dvp/DvdManagerClient;->release()V

    return-void
.end method

.method public openAudOutput(Z)I
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/autochips/dvp/DvdManagerClient;->mDvdBase:Landroid/dvp/IDvdManagerBase;

    const-string v1, "openAudOutput "

    const-string v2, "DvdManagerClient"

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " fail for mDvdBase == null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 94
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/dvp/IDvdManagerBase;->openAudOutput(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " fail, e="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public openFrontDisplay(Z)I
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/autochips/dvp/DvdManagerClient;->mDvdBase:Landroid/dvp/IDvdManagerBase;

    const-string v1, "openFrontDisplay "

    const-string v2, "DvdManagerClient"

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " fail for mDvdBase == null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 111
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/dvp/IDvdManagerBase;->openFrontDisplay(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " fail, e="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public openRearDisplay(Z)I
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/autochips/dvp/DvdManagerClient;->mDvdBase:Landroid/dvp/IDvdManagerBase;

    const-string v1, "openRearDisplay "

    const-string v2, "DvdManagerClient"

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " fail for mDvdBase == null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 127
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/dvp/IDvdManagerBase;->openRearDisplay(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " fail, e="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
