.class public Lcom/autochips/inputsource/DIGIN;
.super Lcom/autochips/inputsource/InputSourceClient;
.source "DIGIN.java"


# static fields
.field public static final DIG_FMT_601_I_480:I = 0x2

.field public static final DIG_FMT_601_I_576:I = 0x3

.field public static final DIG_FMT_601_P_480:I = 0x0

.field public static final DIG_FMT_601_P_576:I = 0x1

.field public static final DIG_FMT_656_I_480:I = 0x6

.field public static final DIG_FMT_656_I_576:I = 0x7

.field public static final DIG_FMT_656_P_480:I = 0x4

.field public static final DIG_FMT_656_P_576:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DIGIN.JAVA"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "DIGIN.JAVA"

    .line 79
    invoke-direct {p0}, Lcom/autochips/inputsource/InputSourceClient;-><init>()V

    .line 81
    :try_start_0
    invoke-static {}, Lcom/autochips/inputsource/DIGIN;->getService()Landroid/inputsource/IInputSourceService;

    move-result-object v1

    sput-object v1, Lcom/autochips/inputsource/DIGIN;->mService:Landroid/inputsource/IInputSourceService;

    .line 82
    sget-object v1, Lcom/autochips/inputsource/DIGIN;->mService:Landroid/inputsource/IInputSourceService;

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/autochips/inputsource/DIGIN;->mService:Landroid/inputsource/IInputSourceService;

    invoke-interface {v1, p0}, Landroid/inputsource/IInputSourceService;->create(Landroid/inputsource/IInputSourceClient;)Landroid/inputsource/IInputSourceBase;

    move-result-object v1

    iput-object v1, p0, Lcom/autochips/inputsource/DIGIN;->mSource:Landroid/inputsource/IInputSourceBase;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/inputsource/DIGIN;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "construct mService get null"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    new-instance v1, Landroid/cbm/CBManager;

    invoke-direct {v1}, Landroid/cbm/CBManager;-><init>()V

    iput-object v1, p0, Lcom/autochips/inputsource/DIGIN;->mCBM:Landroid/cbm/CBManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo v1, "source create fail"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public play()I
    .locals 2

    const-string v0, "DIGIN.JAVA"

    const-string v1, "digital in play(): Enter"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->play()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    const-string v0, "DIGIN.JAVA"

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/autochips/inputsource/DIGIN;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v1, :cond_0

    const-string v1, "release mSource null"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/autochips/inputsource/DIGIN;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v1}, Landroid/inputsource/IInputSourceBase;->release()V

    .line 110
    iget-object v1, p0, Lcom/autochips/inputsource/DIGIN;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v1}, Landroid/cbm/CBManager;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v1, "source release fail"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/autochips/inputsource/DIGIN;->mSource:Landroid/inputsource/IInputSourceBase;

    .line 115
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->release()V

    return-void
.end method

.method public setSource(III)I
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSource portV:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",portA:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",inputSrcType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DIGIN.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/autochips/inputsource/DIGIN;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v0, :cond_0

    const-string/jumbo p1, "setSource mSource null"

    .line 136
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    :cond_0
    const/16 v0, 0xb

    .line 139
    iput v0, p0, Lcom/autochips/inputsource/DIGIN;->mSrcType:I

    .line 140
    iget-object v0, p0, Lcom/autochips/inputsource/DIGIN;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v0, p1, p2, p3}, Landroid/inputsource/IInputSourceBase;->setSource(III)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "setsource fail!"

    .line 142
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public stop()I
    .locals 2

    const-string v0, "DIGIN.JAVA"

    const-string v1, "digital in stop(): Enter"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->stop()I

    move-result v0

    return v0
.end method
