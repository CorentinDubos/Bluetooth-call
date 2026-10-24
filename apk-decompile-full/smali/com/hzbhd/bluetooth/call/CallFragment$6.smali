.class Lcom/hzbhd/bluetooth/call/CallFragment$6;
.super Ljava/lang/Object;
.source "CallFragment.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/call/CallFragment;->initPC6(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/CallFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/call/CallFragment;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$6;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall()V
    .locals 2

    .line 1061
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$6;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$6;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpAnswerCall(Ljava/lang/String;)V

    return-void
.end method

.method public onClean()V
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$6;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$600(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$6;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onHangup()V
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$6;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1300(Lcom/hzbhd/bluetooth/call/CallFragment;)V

    return-void
.end method

.method public onLongClean()V
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$6;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$600(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$6;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNumberCallBack(Ljava/lang/String;)V
    .locals 3

    .line 1081
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$6;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$600(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1082
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 1083
    :cond_0
    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$6;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$600(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$6;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0, p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1600(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    return-void
.end method
