.class Lcom/hzbhd/bluetooth/call/BubbleCall$4;
.super Lcom/hzbhd/bluetooth/BaseBluetoothHfpCallbackListener;
.source "BubbleCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/call/BubbleCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/call/BubbleCall;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-direct {p0}, Lcom/hzbhd/bluetooth/BaseBluetoothHfpCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHfpActiveNumberChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 454
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setCallNumber(Ljava/lang/String;)V

    return-void
.end method

.method public onHfpCallStateChanged(Ljava/lang/String;II)V
    .locals 2

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "<-----onHfpCallStateChanged----->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bubblecall"

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x64

    if-eq p3, p1, :cond_9

    const/16 p1, 0x6e

    if-eq p3, p1, :cond_8

    const/16 p1, 0x78

    if-eq p3, p1, :cond_7

    const/16 p1, 0x8c

    if-eq p3, p1, :cond_6

    const/16 p1, 0xa0

    if-eq p3, p1, :cond_5

    const/16 p1, 0xa5

    if-eq p3, p1, :cond_4

    const/16 p1, 0xc8

    const/16 v0, 0xb4

    const/16 v1, 0xc3

    if-eq p3, v0, :cond_2

    if-eq p3, v1, :cond_1

    if-eq p3, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-ne p2, v1, :cond_a

    .line 512
    :try_start_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setActiveCallUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 514
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_1
    if-ne p2, v0, :cond_a

    .line 503
    :try_start_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->set3WayIncomingCallUI()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 505
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 465
    :cond_2
    :try_start_2
    iget-object p3, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p3}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setActiveCallUI()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p3

    .line 467
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-ne p2, v1, :cond_3

    .line 470
    iget-object p3, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setCallNumber(Ljava/lang/String;)V

    :cond_3
    if-ne p2, p1, :cond_a

    .line 473
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getThreeWayCallNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setCallNumber(Ljava/lang/String;)V

    goto :goto_2

    .line 478
    :cond_4
    :try_start_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setIncomingCallUI()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 480
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    :goto_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getThreeWayCallNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setCallNumber(Ljava/lang/String;)V

    goto :goto_2

    .line 486
    :cond_5
    :try_start_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setOutgoingCallUI()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    .line 488
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 461
    :cond_6
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setEndCallUI()V

    goto :goto_2

    .line 495
    :cond_7
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setEndCallUI()V

    goto :goto_2

    .line 492
    :cond_8
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setEndCallUI()V

    goto :goto_2

    .line 498
    :cond_9
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setEndCallUI()V

    :cond_a
    :goto_2
    return-void
.end method

.method public onHfpIncomingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 522
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setCallNumber(Ljava/lang/String;)V

    return-void
.end method

.method public onHfpMuteStateChanged(Ljava/lang/String;II)V
    .locals 3

    const/16 p1, 0x6e

    const/16 v0, 0x8c

    if-lt p3, v0, :cond_0

    if-gt p2, p1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setMuteState(Z)V

    :cond_0
    if-gt p3, p1, :cond_1

    if-lt p2, v0, :cond_1

    .line 542
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setMuteState(Z)V

    :cond_1
    return-void
.end method

.method public onHfpOutgoingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 526
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setCallNumber(Ljava/lang/String;)V

    return-void
.end method

.method public onHfpScoStateChanged(Ljava/lang/String;II)V
    .locals 0

    const/16 p1, 0x8c

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 534
    :goto_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-virtual {p2, p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->setCallAudioState(I)V

    return-void
.end method

.method public onHfpStateChanged(Ljava/lang/String;II)V
    .locals 0

    .line 447
    :try_start_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$4;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$500(Lcom/hzbhd/bluetooth/call/BubbleCall;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpCallState()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->managerCallUI(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 449
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
