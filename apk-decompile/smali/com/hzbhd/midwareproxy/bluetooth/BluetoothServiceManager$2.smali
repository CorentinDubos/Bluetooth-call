.class Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;
.super Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;
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

    .line 1127
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-direct {p0}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHfpActiveNumberChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1322
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpActiveNumberChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1323
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpActiveNumberChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "NumberChanged_activeNumber"

    .line 1325
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "NumberChanged_holdNumber"

    .line 1326
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1328
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpAtDownloadPhonebookStateChanged(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1248
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpAtDownloadPhonebookStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1249
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpAtDownloadPhonebookStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1250
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpAtDownloadSMSStateChanged(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1256
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpAtDownloadSMSStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1257
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpAtDownloadSMSStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1258
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpCallStateChanged(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1342
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpCallStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1343
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpCallStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1344
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpErrorResponse(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpErrorInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1148
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpErrorResponse:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1149
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpErrorResponse:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "onHfpErrorResponse_address"

    .line 1151
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1153
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpIncomingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1264
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpIncomingCallNumber:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1265
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpIncomingCallNumber:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IncomingCallNumber"

    .line 1267
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1269
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpMicSelectionChanged(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1358
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpMicSelectionChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1359
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpMicSelectionChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1360
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpMicVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpMicVolumeChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1299
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpMicVolumeChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Mic_prevVolume"

    .line 1301
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Mic_newVolume"

    .line 1302
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1304
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpMuteStateChanged(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1350
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpMuteStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1351
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpMuteStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1352
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpOutgoingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpOutgoingCallNumber:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1276
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpOutgoingCallNumber:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "OutgoingCallNumber"

    .line 1278
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1280
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpRemoteDeviceBatteryStatusChanged(Ljava/lang/String;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1223
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpRemoteDeviceBatteryStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1224
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpRemoteDeviceBatteryStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1225
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "StatusChanged_maxStatus"

    .line 1226
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "StatusChanged_minStatus"

    .line 1227
    invoke-virtual {p2, p3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1228
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1229
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpRemoteDevicePhoneNumberChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1171
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpRemoteDevicePhoneNumberChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1172
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpRemoteDevicePhoneNumberChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PhoneNumberChanged_address"

    .line 1174
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1176
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpRemoteDeviceRoamStatusChanged(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1214
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpRemoteDeviceRoamStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1215
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpRemoteDeviceRoamStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1216
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpRemoteDeviceServiceStatusChanged(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1206
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpRemoteDeviceServiceStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1207
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpRemoteDeviceServiceStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1208
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpRemoteDeviceSignalStatusChanged(Ljava/lang/String;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1236
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpRemoteDeviceSignalStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1237
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpRemoteDeviceSignalStatusChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1238
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "SignalStatusChanged_maxStatus"

    .line 1239
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "SignalStatusChanged_minStatus"

    .line 1240
    invoke-virtual {p2, p3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1241
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1242
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpScoStateChanged(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1140
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpScoStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1141
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpScoStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1142
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpSpeakerVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1286
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpSpeakerVolumeChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1287
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpSpeakerVolumeChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Speaker_prevVolume"

    .line 1289
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Speaker_newVolume"

    .line 1290
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1292
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpStateChanged(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1132
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpStateChangedHFP:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1133
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object p3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpStateChangedHFP:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1134
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onHfpVoiceControlStateChanged(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1334
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpVoiceControlStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1335
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->onHfpVoiceControlStateChanged:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1336
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retHfpRemoteDeviceInfo(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpStatusInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retHfpRemoteDeviceInfo:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1160
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retHfpRemoteDeviceInfo:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "retHfpRemoteDeviceInfo_address"

    .line 1162
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1164
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retHfpRemoteDeviceNetworkOperator(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retHfpRemoteDeviceNetworkOperator:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1184
    iget-object p3, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p3

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retHfpRemoteDeviceNetworkOperator:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1185
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "NetworkOperator_mode"

    .line 1186
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "NetworkOperator_operator"

    .line 1187
    invoke-virtual {p3, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1189
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1195
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retHfpRemoteDeviceSubscriberNumber:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p3, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1196
    iget-object p3, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p3

    sget-object p4, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retHfpRemoteDeviceSubscriberNumber:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {p4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1197
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "DeviceSubscriber_number"

    .line 1198
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1200
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public retPbapQueryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1310
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retPbapQueryName:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p4, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1311
    iget-object p4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p4

    sget-object v0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->retPbapQueryName:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1312
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "PbapQuery_phoneNumber"

    .line 1313
    invoke-virtual {p4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "PbapQuery_fullName"

    .line 1314
    invoke-virtual {p4, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p1, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1316
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$2;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$800(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
