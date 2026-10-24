.class Lcom/autochips/bluetooth/hf/BluetoothHfUtility$1;
.super Ljava/util/TimerTask;
.source "BluetoothHfUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->scheduleBroadcastCallState(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 311
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHfUtility"

    if-eqz v0, :cond_0

    const-string v0, "TimerTask run: scheduleBroadcastCallState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$100(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 314
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast call state. state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$200(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.hf.BluetoothHfUtility.action.callStateChange"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$200(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)I

    move-result v2

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfUtility.extra.callState"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    iget-object v2, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-static {v2}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$300(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-static {v1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$300(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "---------context is null------------"

    .line 318
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    invoke-static {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$100(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 321
    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfUtility$1;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfUtility;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/hf/BluetoothHfUtility;->access$102(Lcom/autochips/bluetooth/hf/BluetoothHfUtility;Ljava/util/Timer;)Ljava/util/Timer;

    return-void
.end method
