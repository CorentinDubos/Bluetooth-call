.class Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;
.super Lnfore/android/bt/servicemanager/UiHidCallback$Stub;
.source "BluetoothServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)V
    .locals 0

    .line 2094
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-direct {p0}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2124
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAuthStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2125
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAuthStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2126
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHidStateChanged(Ljava/lang/String;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BluetoothServiceManager"

    const-string v1, "------onHidStateChanged()-------"

    .line 2099
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHidStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2101
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHidStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2102
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "hid_reason"

    .line 2103
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2104
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2105
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onScreenModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2117
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onScreenModeChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2118
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onScreenModeChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2119
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2110
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onScreenStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2111
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onScreenStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2112
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$9;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
