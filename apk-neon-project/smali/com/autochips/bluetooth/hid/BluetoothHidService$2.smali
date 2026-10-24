.class Lcom/autochips/bluetooth/hid/BluetoothHidService$2;
.super Landroid/bluetooth/IBluetoothHid$Stub;
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

    .line 129
    iput-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHid$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "BluetoothHidService"

    if-nez v0, :cond_1

    .line 133
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BluetoothHid has been connected to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    iget-object p1, p1, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    iget-object p1, p1, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HID:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v1, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    iget-object p1, p1, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HID:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 137
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    iget-object v0, p1, Lcom/autochips/bluetooth/hid/BluetoothHidService;->intent_hid_state:Landroid/content/Intent;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v1}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothHidServer Connect"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$400(Lcom/autochips/bluetooth/hid/BluetoothHidService;Ljava/lang/String;)Z

    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHidService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothHidService Disconnect. addrConnected is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v2}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v2}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call hid disconnect to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". do nothing."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 154
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {p1}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$500(Lcom/autochips/bluetooth/hid/BluetoothHidService;)V

    return-void
.end method

.method public getCurrentDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHidService"

    if-eqz v0, :cond_0

    const-string v0, "getCurrentDevices"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 177
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 179
    iget-object v3, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v3}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "getCurrentDevices. no connected device."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    .line 182
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 183
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v5}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_3
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentDevices:deviceList.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result v0

    const-string v1, "BluetoothHidService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothHidServer getState. addrConnected is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v2}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 163
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {v3}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 167
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "getState. return connected."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    return v0

    .line 164
    :cond_4
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Calling getState with empty parameter."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/hid/BluetoothHidService$2;->this$0:Lcom/autochips/bluetooth/hid/BluetoothHidService;

    invoke-static {p1}, Lcom/autochips/bluetooth/hid/BluetoothHidService;->access$300(Lcom/autochips/bluetooth/hid/BluetoothHidService;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    return v0
.end method
