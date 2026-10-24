.class Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;
.super Lnfore/android/bt/servicemanager/UiSppCallback$Stub;
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

    .line 2018
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-direct {p0}, Lnfore/android/bt/servicemanager/UiSppCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSppDataReceived(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2055
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onSppDataReceived:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2056
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "spp_receivedData"

    .line 2057
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2058
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2059
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSppErrorResponse(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2034
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onSppErrorResponse:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2035
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onSppErrorResponse:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2036
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSppStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2023
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onSppStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const-string v2, ""

    if-nez p1, :cond_0

    move-object p1, v2

    :cond_0
    invoke-virtual {v0, v1, p3, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2024
    iget-object p3, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p3

    sget-object p4, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onSppStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2025
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    if-nez p2, :cond_1

    move-object p2, v2

    :cond_1
    const-string p4, "SppState_deviceName"

    .line 2026
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2028
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retSppConnectedDeviceAddressList(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2042
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retSppConnectedDeviceAddressList:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2043
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retSppConnectedDeviceAddressList:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2044
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SppConnected_addressList"

    .line 2045
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p2, "SppConnected_nameList"

    .line 2046
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2047
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2048
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$7;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
