.class public Lcom/autochips/inputsource/DIGAUD;
.super Lcom/autochips/inputsource/InputSourceClient;
.source "DIGAUD.java"


# static fields
.field public static final PINMUX_I2SIN_DEFAULT:I = 0x0

.field public static final PINMUX_I2SIN_GROUP1:I = 0x1

.field public static final PINMUX_I2SIN_GROUP2:I = 0x2

.field public static final PINMUX_I2SIN_GROUP3:I = 0x3

.field public static final PINMUX_I2SIN_GROUP4:I = 0x4

.field public static final PINMUX_I2SIN_GROUP5:I = 0x5

.field public static final PINMUX_I2SIN_GROUP6:I = 0x6

.field public static final PINMUX_I2SIN_GROUP7:I = 0x7

.field private static final TAG:Ljava/lang/String; = "DIGAUD.JAVA"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "DIGAUD.JAVA"

    .line 74
    invoke-direct {p0}, Lcom/autochips/inputsource/InputSourceClient;-><init>()V

    .line 76
    :try_start_0
    invoke-static {}, Lcom/autochips/inputsource/DIGAUD;->getService()Landroid/inputsource/IInputSourceService;

    move-result-object v1

    sput-object v1, Lcom/autochips/inputsource/DIGAUD;->mService:Landroid/inputsource/IInputSourceService;

    .line 77
    sget-object v1, Lcom/autochips/inputsource/DIGAUD;->mService:Landroid/inputsource/IInputSourceService;

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/autochips/inputsource/DIGAUD;->mService:Landroid/inputsource/IInputSourceService;

    invoke-interface {v1, p0}, Landroid/inputsource/IInputSourceService;->create(Landroid/inputsource/IInputSourceClient;)Landroid/inputsource/IInputSourceBase;

    move-result-object v1

    iput-object v1, p0, Lcom/autochips/inputsource/DIGAUD;->mSource:Landroid/inputsource/IInputSourceBase;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DIGAUD(): construct mSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/inputsource/DIGAUD;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "DIGAUD(): construct mService get null"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    new-instance v1, Landroid/cbm/CBManager;

    invoke-direct {v1}, Landroid/cbm/CBManager;-><init>()V

    iput-object v1, p0, Lcom/autochips/inputsource/DIGAUD;->mCBM:Landroid/cbm/CBManager;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DIGAUD(): CBManager client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/inputsource/DIGAUD;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "DIGAUD(): source create fail"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public play()I
    .locals 2

    const-string v0, "DIGAUD.JAVA"

    const-string v1, "play(): Enter"

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->play()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    const-string v0, "DIGAUD.JAVA"

    const-string v1, "release()"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/autochips/inputsource/DIGAUD;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v1, :cond_0

    const-string v1, "release(): mSource null"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/autochips/inputsource/DIGAUD;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v1}, Landroid/inputsource/IInputSourceBase;->release()V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release(): CBManager client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/inputsource/DIGAUD;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/autochips/inputsource/DIGAUD;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v1}, Landroid/cbm/CBManager;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "release(): source release fail"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/autochips/inputsource/DIGAUD;->mSource:Landroid/inputsource/IInputSourceBase;

    .line 111
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->release()V

    return-void
.end method

.method public setSource(II)I
    .locals 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSource audPinMuxI2sGrp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",inputSrcType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DIGAUD.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/autochips/inputsource/DIGAUD;->mCBM:Landroid/cbm/CBManager;

    const/16 v0, 0x9

    iput v0, p0, Lcom/autochips/inputsource/DIGAUD;->mSrcType:I

    const/4 v0, 0x0

    .line 133
    :try_start_0
    iget-object v2, p0, Lcom/autochips/inputsource/DIGAUD;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v2, :cond_0

    const-string/jumbo p1, "setSource mSource null"

    .line 134
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/autochips/inputsource/DIGAUD;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v2, p1, p2, v0}, Landroid/inputsource/IInputSourceBase;->setSource(III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "setsource fail!"

    .line 139
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public stop()I
    .locals 2

    const-string v0, "DIGAUD.JAVA"

    const-string/jumbo v1, "stop(): Enter"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->stop()I

    move-result v0

    return v0
.end method
