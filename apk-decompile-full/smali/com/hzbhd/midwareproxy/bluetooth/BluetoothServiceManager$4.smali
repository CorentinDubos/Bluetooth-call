.class Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;
.super Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;
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

    .line 1417
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-direct {p0}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onA2dpStateChangedA2DP:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1423
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onA2dpStateChangedA2DP:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1424
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpBrowsingStateChanged(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1438
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpBrowsingStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1439
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpBrowsingStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1440
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpErrorResponse(Ljava/lang/String;IIB)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1775
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpErrorResponse:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1776
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpErrorResponse:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1777
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "ErrorResponse_eventId"

    .line 1778
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 1779
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1780
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventAddressedPlayerChanged(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1662
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventAddressedPlayerChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1663
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventAddressedPlayerChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1664
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventAvailablePlayerChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1654
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventAvailablePlayerChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1655
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventAvailablePlayerChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1656
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventBatteryStatusChanged(Ljava/lang/String;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1571
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventBatteryStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1572
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventBatteryStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1573
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventNowPlayingContentChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1646
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventNowPlayingContentChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1647
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventNowPlayingContentChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1648
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventPlaybackPosChanged(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1560
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventPlaybackPosChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1561
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventPlaybackPosChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1562
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PlaybackPosChanged_songPos"

    .line 1563
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1564
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1565
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventPlaybackStatusChanged(Ljava/lang/String;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1525
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventPlaybackStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1526
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventPlaybackStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1527
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventPlayerSettingChanged(Ljava/lang/String;[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1587
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventPlayerSettingChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1588
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventPlayerSettingChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1589
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EventPlayerSetting_attributeIds"

    .line 1590
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p2, "EventPlayerSetting_valueIds"

    .line 1591
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1592
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1593
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventSystemStatusChanged(Ljava/lang/String;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1579
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventSystemStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1580
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventSystemStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1581
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventTrackChanged(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1533
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventTrackChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1534
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventTrackChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1535
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EventTrackChanged_elementId"

    .line 1536
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1537
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1538
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventTrackReachedEnd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1544
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventTrackReachedEnd:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1545
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventTrackReachedEnd:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1546
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventTrackReachedStart(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1552
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventTrackReachedStart:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1553
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventTrackReachedStart:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1554
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventUidsChanged(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1670
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventUidsChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1671
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventUidsChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1672
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpEventVolumeChanged(Ljava/lang/String;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1678
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventVolumeChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1679
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpEventVolumeChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1680
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1430
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1431
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onAvrcpStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1432
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpAbsoluteVolumeSet(Ljava/lang/String;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1767
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpAbsoluteVolumeSet:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1768
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpAbsoluteVolumeSet:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1769
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpAddressedPlayerSet(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1686
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpAddressedPlayerSet:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1687
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpAddressedPlayerSet:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1688
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpBatteryStatusOfCtInformed(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1638
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpBatteryStatusOfCtInformed:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1639
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpBatteryStatusOfCtInformed:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1640
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpBrowsedPlayerSet(Ljava/lang/String;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1694
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpBrowsedPlayerSet:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1695
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpBrowsedPlayerSet:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1696
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "BrowsedPlayer_itemCount"

    .line 1697
    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1698
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1699
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpCapabilitiesSupportEvent(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1446
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpCapabilitiesSupportEvent:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1447
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpCapabilitiesSupportEvent:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1448
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Capabilities_eventIds"

    .line 1449
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1450
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1451
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpDisplayableCharsetInformed(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1630
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpDisplayableCharsetInformed:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1631
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpDisplayableCharsetInformed:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1632
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpElementAttributesPlaying(Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1500
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpElementAttributesPlaying:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1501
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpElementAttributesPlaying:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1502
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ElementAttributes_metadataAtrributeIds"

    .line 1503
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p2, "ElementAttributes_texts"

    .line 1504
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1506
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpFolderItems(Ljava/lang/String;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1705
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpFolderItems:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1706
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpFolderItems:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1707
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "FolderItems_itemCount"

    .line 1708
    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1709
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1710
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpItemAttributes(Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1728
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpItemAttributes:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1729
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpItemAttributes:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1730
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ItemAttributes_metadataAtrributeIds"

    .line 1731
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p2, "ItemAttributes_texts"

    .line 1732
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1733
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1734
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpMetadataReceivingAborted(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1599
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpMetadataReceivingAborted:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1600
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpMetadataReceivingAborted:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1601
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpNowPlayingAdded(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1759
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpNowPlayingAdded:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1760
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpNowPlayingAdded:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1761
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpPathChanged(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1716
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPathChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1717
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPathChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1718
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PathChanged_itemCount"

    .line 1719
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1720
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1721
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpPlayStatus(Ljava/lang/String;JJB)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1512
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayStatus:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1513
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayStatus:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1514
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PlayStatus_songLen"

    .line 1515
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "PlayStatus_songPos"

    .line 1516
    invoke-virtual {v0, p2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "PlayStatus_statusId"

    .line 1517
    invoke-virtual {v0, p2, p6}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 1518
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1519
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpPlayerSettingAttributeText(Ljava/lang/String;IB[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1608
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayerSettingAttributeText:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1609
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayerSettingAttributeText:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1610
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "PlayerSettingAttribute_text"

    .line 1611
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1612
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1613
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpPlayerSettingAttributesList(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1457
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayerSettingAttributesList:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1458
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayerSettingAttributesList:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1459
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PlayerSetting_attributeIds"

    .line 1460
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1461
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1462
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpPlayerSettingCurrentValues(Ljava/lang/String;[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1479
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayerSettingCurrentValues:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1480
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayerSettingCurrentValues:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1481
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PlayerSettingCurrent_attributeIds"

    .line 1482
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p2, "PlayerSettingCurrent_valueIds"

    .line 1483
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1484
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1485
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpPlayerSettingValueSet(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayerSettingValueSet:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1492
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayerSettingValueSet:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1493
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpPlayerSettingValueText(Ljava/lang/String;IB[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1619
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayerSettingValueText:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1620
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayerSettingValueText:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1621
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "PlayerSettingValue_text"

    .line 1622
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1623
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1624
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpPlayerSettingValuesList(Ljava/lang/String;B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1468
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayerSettingValuesList:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1469
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpPlayerSettingValuesList:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1470
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "PlayerSetting_valueIds"

    .line 1471
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1472
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1473
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpSearchResult(Ljava/lang/String;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1748
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpSearchResult:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1749
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpSearchResult:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1750
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "SearchResult_itemCount"

    .line 1751
    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1752
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1753
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpSelectedItemPlayed(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1740
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpSelectedItemPlayed:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1741
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpSelectedItemPlayed:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1742
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1786
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpUpdateSongStatus:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1787
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retAvrcpUpdateSongStatus:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1788
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "artist"

    .line 1789
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "album"

    .line 1790
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "title"

    .line 1791
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1793
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$4;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
