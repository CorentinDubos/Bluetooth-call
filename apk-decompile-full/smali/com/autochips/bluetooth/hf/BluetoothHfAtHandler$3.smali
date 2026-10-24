.class Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$3;
.super Lcom/autochips/bluetooth/hf/HfAtCommandHandler;
.source "BluetoothHfAtHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->initializeHfAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hf/HfAtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponseCode()V
    .locals 3

    .line 523
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[ATCMD] NO CARRIER "

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$100(Ljava/lang/String;)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$300(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.BLUETOOTH_AT_CMD_WARNING_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 526
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$400(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler$3;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;

    invoke-static {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$300(Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x4

    .line 527
    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAtHandler;->access$202(I)I

    return-void
.end method
