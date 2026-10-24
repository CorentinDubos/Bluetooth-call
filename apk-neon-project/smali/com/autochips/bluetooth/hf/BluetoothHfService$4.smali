.class Lcom/autochips/bluetooth/hf/BluetoothHfService$4;
.super Landroid/os/Handler;
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

    .line 736
    iput-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 741
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 742
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHfService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "device_addr"

    if-eqz v0, :cond_1

    .line 745
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 746
    :goto_0
    iget-object v3, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v3, v3, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    iget p1, p1, Landroid/os/Message;->what:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x5

    const-string v3, "disconnect"

    const/4 v4, -0x1

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    if-eq p1, v4, :cond_8

    const/16 v7, 0x100

    const/4 v8, 0x1

    if-eq p1, v7, :cond_6

    if-eq p1, v8, :cond_5

    const/4 v7, 0x2

    if-eq p1, v7, :cond_4

    const/4 v7, 0x3

    if-eq p1, v7, :cond_3

    const/4 v7, 0x4

    if-eq p1, v7, :cond_2

    .line 791
    :try_start_2
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1402(Lcom/autochips/bluetooth/hf/BluetoothHfService;I)I

    .line 792
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1, v0, v3}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1500(Lcom/autochips/bluetooth/hf/BluetoothHfService;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object p1, p1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 794
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v5}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 777
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1, v7}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1402(Lcom/autochips/bluetooth/hf/BluetoothHfService;I)I

    .line 778
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object p1, p1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v5}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 771
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1, v7}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1402(Lcom/autochips/bluetooth/hf/BluetoothHfService;I)I

    .line 772
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object p1, p1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v5}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 764
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1, v7}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1402(Lcom/autochips/bluetooth/hf/BluetoothHfService;I)I

    .line 765
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object p1, p1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 766
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v5}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 767
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1700(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V

    goto :goto_1

    .line 757
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1, v8}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1402(Lcom/autochips/bluetooth/hf/BluetoothHfService;I)I

    .line 758
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object p1, p1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 759
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v5}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 760
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1600(Lcom/autochips/bluetooth/hf/BluetoothHfService;)V

    goto :goto_1

    :cond_6
    const-string p1, "0"

    .line 783
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 784
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1800(Lcom/autochips/bluetooth/hf/BluetoothHfService;Z)V

    goto :goto_1

    :cond_7
    const-string p1, "1"

    .line 785
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 786
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1, v8}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1800(Lcom/autochips/bluetooth/hf/BluetoothHfService;Z)V

    goto :goto_1

    .line 750
    :cond_8
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1, v4}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1402(Lcom/autochips/bluetooth/hf/BluetoothHfService;I)I

    .line 751
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    invoke-static {p1, v0, v3}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$1500(Lcom/autochips/bluetooth/hf/BluetoothHfService;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object p1, p1, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 753
    iget-object p1, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, p0, Lcom/autochips/bluetooth/hf/BluetoothHfService$4;->this$0:Lcom/autochips/bluetooth/hf/BluetoothHfService;

    iget-object v0, v0, Lcom/autochips/bluetooth/hf/BluetoothHfService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v5}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 799
    invoke-static {}, Lcom/autochips/bluetooth/hf/BluetoothHfService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "hf stateMap error"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_1
    return-void
.end method
