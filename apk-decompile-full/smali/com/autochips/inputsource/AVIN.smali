.class public Lcom/autochips/inputsource/AVIN;
.super Lcom/autochips/inputsource/InputSourceClient;
.source "AVIN.java"


# static fields
.field private static final GET_AUDIO_SPECTRUM:I = 0x3

.field public static final PORT1:I = 0x1

.field public static final PORT2:I = 0x2

.field public static final PORT3:I = 0x3

.field public static final PORT4:I = 0x4

.field public static final PORT5:I = 0x5

.field public static final PORT_NONE:I = 0x0

.field public static final PRIORITY_IN_CBM_LEVEL1:I = 0x1

.field public static final PRIORITY_IN_CBM_LEVEL2:I = 0x2

.field public static final PRIORITY_IN_CBM_LEVEL3:I = 0x3

.field public static final PRIORITY_IN_CBM_LEVEL4:I = 0x4

.field public static final PRIORITY_IN_CBM_LEVEL5:I = 0x5

.field public static final PRIORITY_IN_CBM_LEVEL_DEFAULT:I = 0x0

.field public static final SIGNAL_CHANGE:I = 0x2

.field public static final SIGNAL_LOST:I = 0x1

.field public static final SIGNAL_READY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AVIN.JAVA"

.field public static final VIDEO_FLIP_H:I = 0x1

.field public static final VIDEO_FLIP_HnV:I = 0x3

.field public static final VIDEO_FLIP_NONE:I = 0x0

.field public static final VIDEO_FLIP_V:I = 0x2

.field private static mAudioTrack:Landroid/media/AudioTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "AVIN.JAVA"

    .line 148
    invoke-direct {p0}, Lcom/autochips/inputsource/InputSourceClient;-><init>()V

    .line 150
    :try_start_0
    invoke-static {}, Lcom/autochips/inputsource/AVIN;->getService()Landroid/inputsource/IInputSourceService;

    move-result-object v1

    sput-object v1, Lcom/autochips/inputsource/AVIN;->mService:Landroid/inputsource/IInputSourceService;

    .line 151
    sget-object v1, Lcom/autochips/inputsource/AVIN;->mService:Landroid/inputsource/IInputSourceService;

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/autochips/inputsource/AVIN;->mService:Landroid/inputsource/IInputSourceService;

    invoke-interface {v1, p0}, Landroid/inputsource/IInputSourceService;->create(Landroid/inputsource/IInputSourceClient;)Landroid/inputsource/IInputSourceBase;

    move-result-object v1

    iput-object v1, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AVIN(): construct mSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "AVIN(): construct mService get null"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    new-instance v1, Landroid/cbm/CBManager;

    invoke-direct {v1}, Landroid/cbm/CBManager;-><init>()V

    iput-object v1, p0, Lcom/autochips/inputsource/AVIN;->mCBM:Landroid/cbm/CBManager;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AVIN(): CBManager client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/inputsource/AVIN;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "AVIN(): source create fail"

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public getSignalStatus()I
    .locals 2

    const-string v0, "AVIN.JAVA"

    const-string v1, "getSignalStatus "

    .line 345
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v1, :cond_0

    const-string/jumbo v1, "the mSource is null,so getSignalStatus fail"

    .line 349
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x1774

    return v0

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v1}, Landroid/inputsource/IInputSourceBase;->getSignalStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "getSignalStatus fail"

    .line 354
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x1775

    :goto_0
    return v0
.end method

.method public getSpectrum([I)I
    .locals 3

    const-string v0, "AVIN.JAVA"

    const-string v1, "getSpectrum "

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    const/4 v2, 0x3

    invoke-interface {v1, v2, p1}, Landroid/inputsource/IInputSourceBase;->getParam(I[I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "getSpectrum fail"

    .line 323
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1775

    return p1
.end method

.method public play()I
    .locals 3

    const-string v0, "AVIN.JAVA"

    const-string v1, "play(): Enter"

    .line 277
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget v1, p0, Lcom/autochips/inputsource/AVIN;->mSrcType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    const-string v1, "play(): call audio track play"

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v0, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_0

    .line 282
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play(): mSrcType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/autochips/inputsource/AVIN;->mSrcType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mAudioTrack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->play()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 4

    const-string v0, "AVIN.JAVA"

    const-string v1, "release()"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v1, :cond_0

    const-string v1, "release(): mSource null"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v1}, Landroid/inputsource/IInputSourceBase;->release()V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release(): CBManager client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/inputsource/AVIN;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/autochips/inputsource/AVIN;->mCBM:Landroid/cbm/CBManager;

    invoke-virtual {v1}, Landroid/cbm/CBManager;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "release(): source release fail"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    .line 185
    iput-object v1, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    .line 186
    iget v2, p0, Lcom/autochips/inputsource/AVIN;->mSrcType:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "stop(): call audio track stop"

    .line 187
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 189
    sput-object v1, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    .line 191
    :cond_1
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->release()V

    return-void
.end method

.method public setBrightness(I)I
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBrightness brightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVIN.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v0, :cond_0

    const-string/jumbo p1, "setMirror fail mSource null"

    .line 372
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v0, p1}, Landroid/inputsource/IInputSourceBase;->setBrightness(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "setBrightness fail"

    .line 377
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setHue(I)I
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHue hue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVIN.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v0, :cond_0

    const-string/jumbo p1, "setHue fail mSource null"

    .line 333
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v0, p1}, Landroid/inputsource/IInputSourceBase;->setHue(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "setHue fail"

    .line 338
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setMirror(I)I
    .locals 3

    const-string v0, "AVIN.JAVA"

    if-ltz p1, :cond_2

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 424
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMirror mirror:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v1, :cond_1

    const-string/jumbo p1, "setMirror fail mSource null"

    .line 427
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v1, p1}, Landroid/inputsource/IInputSourceBase;->setMirror(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "setMirror fail"

    .line 432
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1

    .line 421
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMirror mirror is Invalid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1770

    return p1
.end method

.method public setSaturation(I)I
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSaturation saturation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVIN.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez v0, :cond_0

    const-string/jumbo p1, "setSaturation fail mSource null"

    .line 398
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {v0, p1}, Landroid/inputsource/IInputSourceBase;->setSaturation(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "setSaturation fail"

    .line 403
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setSource(IIII)I
    .locals 9

    .line 209
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

    const-string v1, ",Priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVIN.JAVA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x1771

    if-ltz p2, :cond_8

    const/4 v2, 0x5

    if-gt p2, v2, :cond_8

    if-ltz p3, :cond_8

    if-le p3, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p3, :cond_1

    if-nez p2, :cond_1

    const-string/jumbo p1, "setSource FAIL Audio Video both null"

    .line 217
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-nez p2, :cond_5

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    const-string/jumbo v0, "setSource enter SOURCE_TYPE_RDS_AUD new audio track"

    .line 223
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    .line 224
    iput v0, p0, Lcom/autochips/inputsource/AVIN;->mSrcType:I

    .line 225
    new-instance v0, Landroid/media/AudioTrack;

    const/16 v3, 0xd

    const v4, 0xac44

    const/4 v5, 0x4

    const/4 v6, 0x2

    const v2, 0xac44

    const/4 v7, 0x4

    const/4 v8, 0x2

    invoke-static {v2, v7, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    const/4 v8, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSource mAudioTrack setAudioTrackDataSource: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v0, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack;->setAudioTrackDataSource(I)V

    goto :goto_0

    .line 239
    :cond_2
    sget-object v0, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSource From RDS to AVIN(STREAM_MUSIC)AudioTrack: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v0, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack;->setAudioTrackDataSource(I)V

    .line 242
    sget-object v0, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 243
    sput-object v0, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_3
    const/16 v0, 0x9

    .line 245
    iput v0, p0, Lcom/autochips/inputsource/AVIN;->mSrcType:I

    .line 247
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/autochips/inputsource/AVIN;->mCBM:Landroid/cbm/CBManager;

    iget v2, p0, Lcom/autochips/inputsource/AVIN;->mSrcType:I

    invoke-virtual {v0, v2}, Landroid/cbm/CBManager;->setFMType(I)I

    goto :goto_1

    :cond_5
    if-nez p3, :cond_6

    const/16 v0, 0x8

    .line 249
    iput v0, p0, Lcom/autochips/inputsource/AVIN;->mSrcType:I

    goto :goto_1

    :cond_6
    const/16 v0, 0xa

    .line 251
    iput v0, p0, Lcom/autochips/inputsource/AVIN;->mSrcType:I

    .line 253
    :goto_1
    iput p4, p0, Lcom/autochips/inputsource/AVIN;->mInputSourceCBMPriority:I

    .line 256
    :try_start_0
    iget-object p4, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    if-nez p4, :cond_7

    const-string/jumbo p1, "setSource mSource null"

    .line 257
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1774

    return p1

    .line 260
    :cond_7
    iget-object p4, p0, Lcom/autochips/inputsource/AVIN;->mSource:Landroid/inputsource/IInputSourceBase;

    invoke-interface {p4, p1, p2, p3}, Landroid/inputsource/IInputSourceBase;->setSource(III)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string/jumbo p1, "setsource fail!"

    .line 262
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_2
    return p1

    :cond_8
    :goto_3
    const-string/jumbo p1, "setSource FAIL Invalid port number"

    .line 213
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public stop()I
    .locals 4

    const-string v0, "AVIN.JAVA"

    const-string/jumbo v1, "stop(): Enter"

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-super {p0}, Lcom/autochips/inputsource/InputSourceClient;->stop()I

    move-result v1

    .line 296
    iget v2, p0, Lcom/autochips/inputsource/AVIN;->mSrcType:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "stop(): call audio track stop"

    .line 297
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v0, Lcom/autochips/inputsource/AVIN;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    return v1
.end method
