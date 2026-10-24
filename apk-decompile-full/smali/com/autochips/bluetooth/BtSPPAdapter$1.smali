.class Lcom/autochips/bluetooth/BtSPPAdapter$1;
.super Landroid/os/Handler;
.source "BtSPPAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/BtSPPAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/BtSPPAdapter;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/BtSPPAdapter;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter$1;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2710

    const-string v2, "BtSPPAdapter"

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MESSAGE_RECIEVE_DATA"

    .line 131
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AT_Respond"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE_RECIEVE_DATA:data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter$1;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/BtSPPAdapter;->access$200(Lcom/autochips/bluetooth/BtSPPAdapter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.autochips.bluetooth.BtSPPAdapter.data.extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter$1;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    invoke-static {p1}, Lcom/autochips/bluetooth/BtSPPAdapter;->access$100(Lcom/autochips/bluetooth/BtSPPAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter$1;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/BtSPPAdapter;->access$200(Lcom/autochips/bluetooth/BtSPPAdapter;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter$1;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/BtSPPAdapter;->access$000(Lcom/autochips/bluetooth/BtSPPAdapter;)Landroid/content/Intent;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v1, "com.autochips.bluetooth.BtSPPAdapter.stateChange.extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    iget-object p1, p0, Lcom/autochips/bluetooth/BtSPPAdapter$1;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    invoke-static {p1}, Lcom/autochips/bluetooth/BtSPPAdapter;->access$100(Lcom/autochips/bluetooth/BtSPPAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/BtSPPAdapter$1;->this$0:Lcom/autochips/bluetooth/BtSPPAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/BtSPPAdapter;->access$000(Lcom/autochips/bluetooth/BtSPPAdapter;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
