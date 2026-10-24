.class Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "BluetoothReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver$ClearUserDataObserver;->this$0:Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver$ClearUserDataObserver;->this$0:Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;->access$000(Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 61
    :goto_0
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 62
    iget-object p2, p0, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver$ClearUserDataObserver;->this$0:Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;->access$000(Lcom/hzbhd/bluetooth/receiver/BluetoothReceiver;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
