.class Lcom/hzbhd/bluetooth/call/BubbleCall$5;
.super Landroid/os/Handler;
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

    .line 610
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 616
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 619
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$900(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    .line 620
    invoke-static {v2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$500(Lcom/hzbhd/bluetooth/call/BubbleCall;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v3}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$500(Lcom/hzbhd/bluetooth/call/BubbleCall;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCallTime(Ljava/lang/String;)I

    move-result v2

    .line 619
    invoke-virtual {v0, v2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->parseSecond2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$600(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$600(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 623
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 624
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$1000(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$1000(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$1100(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 628
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$1100(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 630
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 631
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$1200(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 632
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$1200(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$500(Lcom/hzbhd/bluetooth/call/BubbleCall;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$1300(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 635
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$1300(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$500(Lcom/hzbhd/bluetooth/call/BubbleCall;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$500(Lcom/hzbhd/bluetooth/call/BubbleCall;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 638
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$1400(Lcom/hzbhd/bluetooth/call/BubbleCall;)Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$500(Lcom/hzbhd/bluetooth/call/BubbleCall;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    .line 639
    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$500(Lcom/hzbhd/bluetooth/call/BubbleCall;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-virtual {p1, v0, v1}, Lcom/hzbhd/bluetooth/call/BubbleCall$ContactAsyncQueryHandler;->queryContactName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 642
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1, v1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$1502(Lcom/hzbhd/bluetooth/call/BubbleCall;Z)Z

    goto :goto_0

    .line 643
    :cond_6
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 644
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$5;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$1600(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 650
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method
