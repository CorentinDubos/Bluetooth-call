.class Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;
.super Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;
.source "BluetoothAvrcpCtService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-direct {p0}, Lcom/autochips/bluetooth/avrcpct/IBluetoothAvrcpCtPlayerManage$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getA2dpAudioStatus()I
    .locals 1

    .line 600
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAudioState:I

    return v0
.end method

.method public getA2dpSinkState()I
    .locals 1

    .line 556
    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    return v0
.end method

.method public getA2dpSourceAddr()Ljava/lang/String;
    .locals 1

    .line 561
    sget-object v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSourceAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getAvrcpctState()I
    .locals 1

    .line 566
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAvrcpCtState:I

    return v0
.end method

.method public getPosChangedEventStatus()I
    .locals 1

    .line 577
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->posChangedEventStatus:I

    return v0
.end method

.method public getTrackChangedEventStatus()I
    .locals 1

    .line 572
    sget v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->trackChangedEventStatus:I

    return v0
.end method

.method public playBackward(Ljava/lang/String;)Z
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder: playBackward()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->backward(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public playContinue(Ljava/lang/String;)Z
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder:  playContinue()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->play(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public playFastForward(Ljava/lang/String;)Z
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder: playFastForward()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->fastForward(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public playForward(Ljava/lang/String;)Z
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder:  playForward()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->forward(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public playPause(Ljava/lang/String;)Z
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder:  playPause()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->pause(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public playRewind(Ljava/lang/String;)Z
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder: playRewind()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->rewind(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public playStop(Ljava/lang/String;)Z
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder: playStop()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->stop(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public playgetCapabilities(B)Z
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder: playgetCapabilities()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->getCapabilities(B)Z

    move-result p1

    return p1
.end method

.method public playgetElementAttributes(JB[I)Z
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder: playgetElementAttributes()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->getElementAttributes(JB[I)Z

    move-result p1

    return p1
.end method

.method public playgetItemAttributes(BJCB[I)Z
    .locals 9

    .line 520
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder: playgetItemAttributes()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->getItemAttributes(BJCB[I)Z

    move-result p1

    return p1
.end method

.method public playgetPlayerStatus()Z
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder: playgetPlayerStatus()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->getPlayerStatus()Z

    move-result v0

    return v0
.end method

.method public playinformDisplaybaleCharset(BC)Z
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder: playinformDisplaybaleCharset()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->informDisplayableCharset(BC)Z

    move-result p1

    return p1
.end method

.method public playonResume()I
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder:  playonResume()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$500(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)I

    move-result v0

    return v0
.end method

.method public playonRevoke()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder:  playonRevoke()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$600(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;)V

    return-void
.end method

.method public playregResume(Z)V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder:  playregResume()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$400(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Z)V

    return-void
.end method

.method public playregisterNotificationReq(BI)Z
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder: playregisterNotificationReq()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-virtual {v0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->registerNotificationReq(BI)Z

    move-result p1

    return p1
.end method

.method public playresetAudio(II)I
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    const-string v1, "mAvrcpCtPlayerManagerBinder:  playresetAudio()"

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$000(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-static {v0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->access$300(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;II)I

    move-result p1

    return p1
.end method

.method public regClientBinder(Landroid/os/IBinder;)V
    .locals 2

    .line 588
    new-instance v0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvpClientDeathHandler;

    iget-object v1, p0, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$3;->this$0:Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;

    invoke-direct {v0, v1, p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService$AvpClientDeathHandler;-><init>(Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;Landroid/os/IBinder;)V

    const/4 v1, 0x0

    .line 591
    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regClientBinder could not link to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " binder death."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAvrcpCtService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
