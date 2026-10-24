.class Lcom/autochips/bluetooth/hid/BluetoothHidService$3;
.super Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility$Stub;
.source "BluetoothHidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/hid/BluetoothHidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/hid/BluetoothHidService;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-direct {p0}, Lcom/autochips/bluetooth/hid/IBluetoothHidDeviceUtility$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "BluetoothHidService"

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 199
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BluetoothHid has been connected to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    iget-object p1, p1, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    const-string v0, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    iget-object p1, p1, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 202
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    iget-object p1, p1, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HID:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 203
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    iget-object v0, p1, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v1}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 207
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothHidServer Connect"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$400(Lcom/autochips/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Z

    return v2
.end method

.method public disconnect()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothHidServer Disconnect. addrConnected is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v1}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$500(Lcom/autochips/bluetooth/hid/BluetoothHidService;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getConnectedAddr()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHidConnected()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public sendCtlData([BI)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {p1}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-string v0, "BluetoothHidService"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 246
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BluetoothHid has not been connected. sendCtlData fail."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    if-ltz p2, :cond_3

    const/16 p1, 0xff

    if-le p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "sendCtlData is not implemented."

    .line 252
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 249
    :cond_3
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "len parameter invalid. sendCtlData fail."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method public sendIntData([BI)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "BluetoothHidService"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 233
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BluetoothHid has not been connected. sendIntData fail."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    if-ltz p2, :cond_3

    const/16 v0, 0xff

    if-le p2, v0, :cond_2

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$3;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0, p2, p1}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$600(Lcom/autochips/bluetooth/hid/BluetoothHidService;I[B)V

    const/4 p1, 0x1

    return p1

    .line 236
    :cond_3
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "len parameter invalid. sendIntData fail."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2
.end method
