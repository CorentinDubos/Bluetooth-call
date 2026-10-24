.class Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver$1;
.super Landroid/os/Handler;
.source "BluetoothReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver$1;->this$0:Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v0, "BluetoothReceiver"

    if-ne p1, v1, :cond_1

    const-string p1, "----OP_SUCCESSFUL----"

    .line 45
    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "----OP_FAILED----"

    .line 47
    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
