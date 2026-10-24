.class Lcom/hzbhd/bluetooth/call/CallFragment$3;
.super Landroid/os/Handler;
.source "CallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/call/CallFragment;->initUI_H1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/CallFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/call/CallFragment;Landroid/os/Looper;)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 932
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 933
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 955
    :pswitch_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1300(Lcom/hzbhd/bluetooth/call/CallFragment;)V

    goto :goto_0

    .line 952
    :pswitch_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpAnswerCall(Ljava/lang/String;)V

    goto :goto_0

    .line 949
    :pswitch_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1200(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1200(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 945
    :pswitch_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpMicMute()Z

    goto :goto_0

    .line 935
    :pswitch_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$900(Lcom/hzbhd/bluetooth/call/CallFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 936
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$902(Lcom/hzbhd/bluetooth/call/CallFragment;Z)Z

    .line 937
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpAudioTransfer(Ljava/lang/String;B)Z

    .line 939
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$400(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 940
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$3;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$400(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
