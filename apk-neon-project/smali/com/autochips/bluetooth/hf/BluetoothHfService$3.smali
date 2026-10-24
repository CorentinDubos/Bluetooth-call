.class Lcom/autochips/bluetooth/hf/BluetoothHfService$3;
.super Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;
.source "BluetoothHfService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/IBluetoothHfServerNotify$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public AcceptIncommingCall()V
    .locals 3

    .line 531
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHfService"

    if-eqz v0, :cond_0

    const-string v0, "Answer Incomming Call: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$800(Lcom/autochips/bluetooth/hf/BluetoothHfService;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 534
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HSAtCmdAcceptIncommingCall()V

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const-string v2, "ATA"

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "call  answer send urc failure "

    .line 537
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public CallHold(Ljava/lang/String;)V
    .locals 3

    .line 555
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    const-string v1, "CallHold: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+CHLD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    return-void
.end method

.method public CallWait()V
    .locals 2

    .line 550
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    const-string v1, "CallWait: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const-string v1, "AT+CCWA=1"

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    return-void
.end method

.method public DialNumber(Ljava/lang/String;)V
    .locals 3

    .line 525
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHfService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    return-void
.end method

.method public IsSCOConnected()Z
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$900(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z

    move-result v0

    return v0
.end method

.method public QueryCallList()Z
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const-string v1, "AT+CLCC"

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public QuerySubcriberInfo()V
    .locals 3

    .line 565
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHfService"

    if-eqz v0, :cond_0

    const-string v0, "Hold Call: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const-string v2, "AT+CNUM"

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Query Subcriber Infomation send urc failure "

    .line 567
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public Redial()Z
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const-string v1, "AT+BLDN"

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public SendDTMFCode(Ljava/lang/String;)V
    .locals 3

    .line 560
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHfService"

    const-string v1, "Send DTMF : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+VTS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    return-void
.end method

.method public SetPhoneSpeakerGain(I)Z
    .locals 3

    const/16 v0, 0xf

    if-le p1, v0, :cond_0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[speaker gaiin too big  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothHfService"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 611
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+VGS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public SwithAudioTransfer(Z)V
    .locals 2

    .line 576
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHfService"

    if-eqz v0, :cond_0

    const-string v0, "Swith Audio Transfer "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 579
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1000(Lcom/autochips/bluetooth/hf/BluetoothHfService;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const-string p1, "Transfer towards AG phone "

    .line 580
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1100(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V

    .line 583
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1002(Lcom/autochips/bluetooth/hf/BluetoothHfService;I)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 586
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1000(Lcom/autochips/bluetooth/hf/BluetoothHfService;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const-string p1, "Transfer towards HF car"

    .line 587
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1200(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z

    .line 590
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1002(Lcom/autochips/bluetooth/hf/BluetoothHfService;I)I

    :cond_2
    :goto_0
    return-void
.end method

.method public TerminatePhoneCall()V
    .locals 3

    .line 543
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHfService"

    if-eqz v0, :cond_0

    const-string v0, "Terminate Phone Call: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const-string v2, "AT+CHUP"

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Terminate PhoneCall send urc failure "

    .line 545
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public enableVoiceRecognition(Z)V
    .locals 0

    .line 672
    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfAtCmdSetBVRA(Z)V

    return-void
.end method

.method public getCLIPPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 638
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->getCLIPPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHfCallValue()I
    .locals 1

    .line 630
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCall:I

    return v0
.end method

.method public getHfCallsetupValue()I
    .locals 1

    .line 634
    sget v0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->mCallsetup:I

    return v0
.end method

.method public getReconnectSuggestion()Z
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1300(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z

    move-result v0

    return v0
.end method

.method public handsfreeSinkSetPhoneMicGain(I)Z
    .locals 3

    const/16 v0, 0xf

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 622
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+VGM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hfAtCmdQueryCalllist()V
    .locals 0

    .line 659
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfAtCmdQueryCalllist()V

    return-void
.end method

.method public hfAtCmdQueryPhoneIdentification()V
    .locals 0

    .line 668
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfAtCmdReadCGMM()V

    return-void
.end method

.method public hfAtCmdQueryPhoneIndicator()V
    .locals 0

    .line 664
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfAtCmdReadCIND()V

    return-void
.end method

.method public isHfPrfileConnected()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$700(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z

    move-result v0

    return v0
.end method

.method public isRemoteDeviceSupportVoiceRecog()Z
    .locals 1

    .line 642
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->isRemoteDeviceSupportVoiceRecognition()Z

    move-result v0

    return v0
.end method

.method public regClientBinder(Landroid/os/IBinder;)V
    .locals 2

    .line 676
    new-instance v0, Lcom/autochips/bluetooth/hf/BluetoothHfService$HfClientDeathHandler;

    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-direct {v0, v1, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService$HfClientDeathHandler;-><init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;Landroid/os/IBinder;)V

    const/4 v1, 0x0

    .line 679
    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
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

    const-string v0, "BluetoothHfService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestSCOSoundEnable(Z)V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->requestCBMSCOEnable(Z)V

    return-void
.end method

.method public sendATCommand(Ljava/lang/String;Z)I
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendHfURC(Ljava/lang/String;)Z

    if-eqz p2, :cond_0

    const/16 p1, 0xa

    .line 651
    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->waitforHfCmdResult(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
