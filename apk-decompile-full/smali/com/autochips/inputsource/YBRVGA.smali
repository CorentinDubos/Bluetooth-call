.class public Lcom/autochips/inputsource/YBRVGA;
.super Lcom/autochips/inputsource/InputSourceClient;
.source "YBRVGA.java"


# static fields
.field private static final IS_CMD_ID_SET_AUTO:I = 0x2

.field public static final SIGNAL_LOST:I = 0x1

.field public static final SIGNAL_NOT_SUPPORT:I = 0x2

.field public static final SIGNAL_READY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "YBRVGA.JAVA"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "YBRVGA.JAVA"

    .line 88
    invoke-direct {p0}, Lcom/autochips/inputsource/InputSourceClient;-><init>()V

    .line 90
    :try_start_0
    invoke-static {}, Lcom/autochips/inputsource/YBRVGA;->getService()Landroid/inputsource/IInputSourceService;

    move-result-object v1

    sput-object v1, Lcom/autochips/inputsource/YBRVGA;->mService:Landroid/inputsource/IInputSourceService;

    .line 91
    sget-object v1, Lcom/autochips/inputsource/YBRVGA;->mService:Landroid/inputsource/IInputSourceService;

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Lcom/autochips/inputsource/YBRVGA;->mService:Landroid/inputsource/IInputSourceService;

    invoke-interface {v1, p0}, Landroid/inputsource/IInputSourceService;->create(Landroid/inputsource/IInputSourceClient;)Landroid/inputsource/IInputSourceBase;

    move-result-object v1

    iput-object v1, p0, Lcom/autochips/inputsource/YBRVGA;->mSource:Landroid/inputsource/IInputSourceBase;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/inputsource/YBRVGA;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "construct mService get null"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    new-instance v1, Landroid/cbm/CBManager;

    invoke-direct {v1}, Landroid/cbm/CBManager;-><init>()V

    iput-object v1, p0, Lcom/autochips/inputsource/YBRVGA;->mCBM:Landroid/cbm/CBManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo v1, "source create fail"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public play()I
    .locals 2

    const-string v0, "YBRVGA.JAVA"

    const-string v1, "YBR_VGA play(): Enter"

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->play()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    const-string v0, "YBRVGA.JAVA"

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/autochips/inputsource/YBRVGA;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v1, :cond_0

    const-string v1, "release mSource null"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/autochips/inputsource/YBRVGA;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v1}, Landroid/inputsource/IInputSourceBase;->release()V

    .line 118
    iget-object v1, p0, Lcom/autochips/inputsource/YBRVGA;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v1}, Landroid/cbm/CBManager;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v1, "source release fail"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/autochips/inputsource/YBRVGA;->mSource:Landroid/inputsource/IInputSourceBase;

    .line 123
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->release()V

    return-void
.end method

.method public setAuto()I
    .locals 4

    const-string v0, "YBRVGA.JAVA"

    const-string/jumbo v1, "setAuto"

    .line 193
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/autochips/inputsource/YBRVGA;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v2, :cond_0

    const-string/jumbo v2, "setAuto fail mSource null"

    .line 196
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x1774

    return v0

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/autochips/inputsource/YBRVGA;->mSource:Landroid/inputsource/IInputSourceBase;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Landroid/inputsource/IInputSourceBase;->setCmd(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v2, "setAuto fail"

    .line 201
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public setSource(III)I
    .locals 2

    .line 141
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

    const-string v1, "YBRVGA.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/autochips/inputsource/YBRVGA;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v0, :cond_0

    const-string/jumbo p1, "setSource mSource null"

    .line 145
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    :cond_0
    const/16 v0, 0xc

    .line 148
    iput v0, p0, Lcom/autochips/inputsource/YBRVGA;->mSrcType:I

    .line 149
    iget-object v0, p0, Lcom/autochips/inputsource/YBRVGA;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v0, p1, p2, p3}, Landroid/inputsource/IInputSourceBase;->setSource(III)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "setsource fail!"

    .line 151
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public stop()I
    .locals 2

    const-string v0, "YBRVGA.JAVA"

    const-string v1, "YBR_VGA stop(): Enter"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->stop()I

    move-result v0

    return v0
.end method
