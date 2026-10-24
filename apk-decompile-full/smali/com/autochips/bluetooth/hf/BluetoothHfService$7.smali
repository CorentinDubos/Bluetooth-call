.class Lcom/autochips/bluetooth/hf/BluetoothHfService$7;
.super Ljava/lang/Thread;
.source "BluetoothHfService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfService;->startHfConnectThread()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfService;Ljava/lang/String;)V
    .locals 0

    .line 985
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$7;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 987
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHfService"

    if-eqz v0, :cond_0

    const-string v0, "Hfp Connect Thread  starting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$7;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$2100(Lcom/autochips/bluetooth/hf/BluetoothHfService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 990
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->HfConnectProcess()Z

    move-result v0

    .line 995
    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$7;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v2, v2, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfConnect_finish_intent:Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.BtDialPadActivity.extra.EXTRA_BLUETOOTH_HF_CONNECTING_RESULT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 996
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$7;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v2, v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->mHfConnect_finish_intent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;)V

    .line 998
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$7;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$2102(Lcom/autochips/bluetooth/hf/BluetoothHfService;Z)Z

    goto :goto_0

    .line 1000
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Hf Connect Thread finished"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
