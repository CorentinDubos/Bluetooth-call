.class public Lcom/autochips/quickboot/QuickBootManager;
.super Ljava/lang/Object;
.source "QuickBootManager.java"


# static fields
.field public static final ACTION_QB_POWEROFF:Ljava/lang/String; = "autochips.intent.action.QB_POWEROFF"

.field public static final ACTION_QB_POWERON:Ljava/lang/String; = "autochips.intent.action.QB_POWERON"

.field public static final ACTION_QB_SERVICE:Ljava/lang/String; = "autochips.intent.action.QB_SERVICE"


# instance fields
.field private mCon:Landroid/content/ServiceConnection;

.field private mSer:Lcom/autochips/quickboot/IQuickBootService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/autochips/quickboot/QuickBootManager;->mSer:Lcom/autochips/quickboot/IQuickBootService;

    .line 27
    new-instance v0, Lcom/autochips/quickboot/QuickBootManager$1;

    invoke-direct {v0, p0}, Lcom/autochips/quickboot/QuickBootManager$1;-><init>(Lcom/autochips/quickboot/QuickBootManager;)V

    iput-object v0, p0, Lcom/autochips/quickboot/QuickBootManager;->mCon:Landroid/content/ServiceConnection;

    .line 18
    invoke-direct {p0, p1}, Lcom/autochips/quickboot/QuickBootManager;->bindService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/autochips/quickboot/QuickBootManager;Lcom/autochips/quickboot/IQuickBootService;)Lcom/autochips/quickboot/IQuickBootService;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/autochips/quickboot/QuickBootManager;->mSer:Lcom/autochips/quickboot/IQuickBootService;

    return-object p1
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 3

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "autochips.intent.action.QB_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/autochips/quickboot/QuickBootManager;->mCon:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public addToWhiteList(Ljava/lang/String;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/autochips/quickboot/QuickBootManager;->mSer:Lcom/autochips/quickboot/IQuickBootService;

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/quickboot/IQuickBootService;->addToWhiteList(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addToYellowList(Ljava/lang/String;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/autochips/quickboot/QuickBootManager;->mSer:Lcom/autochips/quickboot/IQuickBootService;

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/quickboot/IQuickBootService;->addToYellowList(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeFromWhiteList(Ljava/lang/String;)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/autochips/quickboot/QuickBootManager;->mSer:Lcom/autochips/quickboot/IQuickBootService;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/quickboot/IQuickBootService;->removeFromWhiteList(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeFromYellowList(Ljava/lang/String;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/autochips/quickboot/QuickBootManager;->mSer:Lcom/autochips/quickboot/IQuickBootService;

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-interface {v0, p1}, Lcom/autochips/quickboot/IQuickBootService;->removeFromYellowList(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
