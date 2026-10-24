.class Lcom/autochips/bluetooth/BluetoothEventRedirector$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEventRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/BluetoothEventRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/BluetoothEventRedirector;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 87
    invoke-static {}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$000()Z

    move-result v0

    const-string v1, "BluetoothEventRedirector"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    .line 90
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 92
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 93
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    .line 94
    invoke-static {}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$000()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "state= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 p2, 0xc

    if-eq p1, p2, :cond_3e

    .line 96
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_RequestCallAudio(Z)V

    .line 98
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->close()V

    .line 99
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1, v5}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$202(Lcom/autochips/bluetooth/BluetoothEventRedirector;Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 103
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->resetAudio(II)I

    .line 104
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1, v5}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$402(Lcom/autochips/bluetooth/BluetoothEventRedirector;Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    .line 105
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->close()V

    .line 106
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1, v5}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$302(Lcom/autochips/bluetooth/BluetoothEventRedirector;Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    goto/16 :goto_4

    :cond_3
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$500(Lcom/autochips/bluetooth/BluetoothEventRedirector;)V

    .line 111
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/autochips/bluetooth/LocalBluetoothManager;->onScanningStateChanged(Z)V

    goto/16 :goto_4

    :cond_4
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$500(Lcom/autochips/bluetooth/BluetoothEventRedirector;)V

    .line 115
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/autochips/bluetooth/LocalBluetoothManager;->onScanningStateChanged(Z)V

    goto/16 :goto_4

    :cond_5
    const-string v3, "android.bluetooth.device.action.FOUND"

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 p1, -0x8000

    const-string v0, "android.bluetooth.device.extra.RSSI"

    .line 118
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result p1

    const-string v0, "android.bluetooth.device.extra.CLASS"

    .line 120
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    const-string v1, "android.bluetooth.device.extra.NAME"

    .line 122
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 126
    iget-object v1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {v1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onDeviceAppeared(Landroid/bluetooth/BluetoothDevice;SLandroid/bluetooth/BluetoothClass;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    const-string v3, "android.bluetooth.device.action.DISAPPEARED"

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 130
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_4

    :cond_7
    const-string v3, "android.bluetooth.device.action.NAME_CHANGED"

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 133
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_4

    :cond_8
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v8, 0xa

    if-eqz v3, :cond_a

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    .line 136
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {v1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v2, v0}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onBondingStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    if-ne v0, v8, :cond_3e

    .line 143
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {v0}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/autochips/bluetooth/LocalBluetoothManager;->removeDockAutoConnectSetting(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {v3, p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$600(Lcom/autochips/bluetooth/BluetoothEventRedirector;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 151
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V

    :cond_9
    const-string p1, "android.bluetooth.device.extra.REASON"

    .line 154
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 156
    invoke-virtual {v1, v2, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->showUnbondMessage(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_4

    :cond_a
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 160
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 161
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p1, :cond_b

    if-ne p2, v7, :cond_b

    .line 164
    invoke-static {}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$000()Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "Failed to connect BT headset"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_b
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p2

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HEADSET:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p2, v2, v0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;I)V

    goto/16 :goto_4

    :cond_c
    const-string v3, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string p1, "android.bluetooth.a2dp.extra.SINK_STATE"

    .line 171
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    .line 173
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p1, :cond_d

    if-ne p2, v7, :cond_d

    .line 177
    invoke-static {}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$000()Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p2, "Failed to connect BT A2DP"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_d
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p2

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {p2, v2, v0, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;I)V

    goto/16 :goto_4

    :cond_e
    const-string v3, "android.bluetooth.ftp.action.STATE_CHANGED"

    .line 183
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_4

    :cond_f
    const-string v3, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.bluetooth.profilemanager.extra.PROFILE"

    const-string v9, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    const-string v10, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    if-eqz v3, :cond_11

    .line 195
    invoke-virtual {p2, v10, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 197
    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 199
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothProfileManager$Profile;

    if-nez p2, :cond_10

    return-void

    .line 202
    :cond_10
    iget-object v0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {v0}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, v2, p2, p1}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothProfileManager$Profile;I)V

    goto/16 :goto_4

    :cond_11
    const-string v3, "android.bluetooth.device.action.CLASS_CHANGED"

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 204
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_4

    :cond_12
    const-string v3, "android.bluetooth.device.action.UUID"

    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 207
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_4

    :cond_13
    const-string v3, "android.bluetooth.device.action.PAIRING_CANCEL"

    .line 209
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto/16 :goto_4

    :cond_14
    const-string v3, "android.intent.action.DOCK_EVENT"

    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string p1, "android.intent.extra.DOCK_STATE"

    .line 216
    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3e

    if-eqz v2, :cond_3e

    .line 219
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    if-ne p1, v8, :cond_3e

    .line 221
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$100(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_4

    :cond_15
    const-string v2, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/16 v8, 0xf

    if-eqz v2, :cond_21

    .line 225
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfileManager$Profile;

    const/16 v2, 0xe

    .line 226
    invoke-virtual {p2, v10, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 227
    invoke-virtual {p2, v9, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 228
    invoke-static {}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$000()Z

    move-result v9

    if-eqz v9, :cond_16

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "profilename:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ",profilestate:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-nez v0, :cond_17

    return-void

    .line 231
    :cond_17
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_HF:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, "device_addr"

    .line 232
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    if-ne v4, v7, :cond_18

    .line 234
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$202(Lcom/autochips/bluetooth/BluetoothEventRedirector;Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    goto/16 :goto_4

    :cond_18
    if-ne v4, v3, :cond_3e

    .line 236
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 237
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_RequestCallAudio(Z)V

    .line 238
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_ResetUtility()V

    .line 239
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1, v5}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$202(Lcom/autochips/bluetooth/BluetoothEventRedirector;Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    goto/16 :goto_4

    :cond_19
    if-eqz v0, :cond_1e

    .line 244
    sget-object p2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP_SINK:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    if-ne v4, v7, :cond_1b

    if-eq v2, v8, :cond_1a

    .line 247
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p2

    if-nez p2, :cond_1d

    .line 248
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$302(Lcom/autochips/bluetooth/BluetoothEventRedirector;Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    goto/16 :goto_0

    :cond_1a
    if-ne v2, v8, :cond_1d

    .line 250
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpAudioStatus()I

    move-result p1

    if-ne p1, v7, :cond_1d

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpSinkStateValue()I

    move-result p1

    const/16 p2, 0x13

    if-eq p1, p2, :cond_1d

    .line 254
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->resetAudio(II)I

    goto :goto_0

    :cond_1b
    if-ne v4, v8, :cond_1c

    .line 257
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$700(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpAudioStatus()I

    move-result p1

    if-nez p1, :cond_1d

    .line 260
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1, v7, v7}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->resetAudio(II)I

    goto :goto_0

    :cond_1c
    if-ne v4, v3, :cond_1d

    .line 263
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpAudioStatus()I

    move-result p1

    if-ne p1, v7, :cond_1d

    .line 265
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->resetAudio(II)I

    .line 269
    :cond_1d
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->handleA2DPStateChanged(I)V

    goto/16 :goto_4

    :cond_1e
    if-eqz v0, :cond_3e

    .line 272
    sget-object p2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_AVRCP_CT:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothProfileManager$Profile;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    if-ne v4, v7, :cond_20

    .line 274
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p2

    if-nez p2, :cond_1f

    .line 275
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$302(Lcom/autochips/bluetooth/BluetoothEventRedirector;Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    .line 277
    :cond_1f
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-nez p1, :cond_20

    .line 278
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getUtility()Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$402(Lcom/autochips/bluetooth/BluetoothEventRedirector;Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    .line 282
    :cond_20
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->handleAVRCPStateChanged(I)V

    goto/16 :goto_4

    :cond_21
    const-string p1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.CALLSETUP_STATE_CHANGED"

    .line 284
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const-string p1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_CALLSETUP_STATE"

    .line 285
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 286
    invoke-static {}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$000()Z

    move-result p2

    if-eqz p2, :cond_22

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callSetup="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-nez p1, :cond_24

    .line 288
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_GetCallValue()I

    move-result p2

    if-nez p2, :cond_26

    .line 290
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    if-eqz p2, :cond_23

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_RequestCallAudio(Z)V

    .line 293
    :cond_23
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$700(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Z

    move-result p2

    if-eqz p2, :cond_26

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p2

    if-eqz p2, :cond_26

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpAudioStatus()I

    move-result p2

    if-nez p2, :cond_26

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpSinkStateValue()I

    move-result p2

    if-ne p2, v8, :cond_26

    .line 297
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p2

    invoke-virtual {p2, v7, v7}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->resetAudio(II)I

    goto :goto_1

    .line 301
    :cond_24
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    if-eqz p2, :cond_25

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_RequestCallAudio(Z)V

    .line 302
    :cond_25
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    if-eqz p2, :cond_26

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_GetCallValue()I

    move-result p2

    if-eqz p2, :cond_26

    .line 303
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_Hangup_WaitingCall()V

    .line 306
    :cond_26
    :goto_1
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    if-eqz p2, :cond_3e

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_UpdateCallsetupValue(I)V

    goto/16 :goto_4

    :cond_27
    const-string p1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.CALL_STATE_CHANGED"

    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const-string p1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_CALL_STATE"

    .line 308
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 309
    invoke-static {}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$000()Z

    move-result p2

    if-eqz p2, :cond_28

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callState="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    if-nez p1, :cond_2a

    .line 311
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    if-eqz p2, :cond_29

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_RequestCallAudio(Z)V

    .line 314
    :cond_29
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$700(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Z

    move-result p2

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p2

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpAudioStatus()I

    move-result p2

    if-nez p2, :cond_2b

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpSinkStateValue()I

    move-result p2

    if-ne p2, v8, :cond_2b

    .line 318
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p2

    invoke-virtual {p2, v7, v7}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->resetAudio(II)I

    goto :goto_2

    .line 321
    :cond_2a
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_RequestCallAudio(Z)V

    .line 323
    :cond_2b
    :goto_2
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    if-eqz p2, :cond_3e

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_UpdateCallValue(I)V

    goto/16 :goto_4

    :cond_2c
    const-string p1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.PHONE_NUMBER_CHANGED"

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    const-string p1, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    .line 325
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2d

    .line 327
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    if-eqz p2, :cond_3e

    .line 328
    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_UpdateCallingNumber(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2d
    if-nez p1, :cond_2e

    const-string p1, "null"

    goto :goto_3

    :cond_2e
    const-string p1, "empty number"

    .line 333
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remote phone number error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2f
    const-string p1, "com.autochips.bluetooth.BtDialPadActivity.action.BLUETOOTH_HF_CONNECT_FINISH"

    .line 335
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 336
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 337
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_updateHFConnectedState(I)V

    .line 338
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p2}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_GetCallValue()I

    move-result p2

    iget-object v0, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {v0}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$200(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_GetCallsetupValue()I

    move-result v0

    invoke-virtual {p1, p2, v0, v6}, Lcom/autochips/bluetooth/hf/BluetoothHfAdapter;->Bluetooth_Hf_UpdateCallRelatedValues(III)V

    goto/16 :goto_4

    :cond_30
    const-string p1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_CAPABILITY_CNF"

    .line 344
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 345
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->handleGetCapabilityCnf(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_31
    const-string p1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_ELEMENT_ATTRIBUTES"

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 349
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->handleGetElementAttributesCnf(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_32
    const-string p1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.GET_PLAYER_STATUS"

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 353
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->handleGePlayerStatusCnf(Landroid/content/Intent;)V

    .line 355
    :cond_33
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 357
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->getPlaybackStatus()B

    move-result p1

    if-eqz p1, :cond_35

    if-eq p1, v7, :cond_34

    if-eq p1, v3, :cond_35

    goto/16 :goto_4

    .line 359
    :cond_34
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$700(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpAudioStatus()I

    move-result p1

    if-nez p1, :cond_3e

    .line 361
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1, v7, v7}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->resetAudio(II)I

    goto/16 :goto_4

    .line 367
    :cond_35
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpAudioStatus()I

    move-result p1

    if-ne p1, v7, :cond_3e

    .line 368
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->resetAudio(II)I

    goto/16 :goto_4

    :cond_36
    const-string p1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_STATUS_CHANGED"

    .line 375
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 376
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->handleRegNotificationStatusChangedCnf(Landroid/content/Intent;)V

    .line 378
    :cond_37
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 380
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->getPlaybackStatus()B

    move-result p1

    if-eqz p1, :cond_39

    if-eq p1, v7, :cond_38

    if-eq p1, v3, :cond_39

    goto/16 :goto_4

    .line 382
    :cond_38
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$700(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpAudioStatus()I

    move-result p1

    if-nez p1, :cond_3e

    .line 384
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1, v7, v7}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->resetAudio(II)I

    goto/16 :goto_4

    .line 390
    :cond_39
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->getA2dpAudioStatus()I

    move-result p1

    if-ne p1, v7, :cond_3e

    .line 391
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$300(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtPlayerManage;->resetAudio(II)I

    goto :goto_4

    :cond_3a
    const-string p1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_TRACK_CHANGED"

    .line 398
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 399
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->handleRegNotificationTrackChangedCnf(Landroid/content/Intent;)V

    goto :goto_4

    :cond_3b
    const-string p1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_POS_CHANGED"

    .line 402
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 403
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->handleRegNotificationPosChangedCnf(Landroid/content/Intent;)V

    goto :goto_4

    :cond_3c
    const-string p1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.REG_NOTIFICATION_ERROR"

    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 407
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->handleRegNotificationErrorEventCnf(Landroid/content/Intent;)V

    goto :goto_4

    :cond_3d
    const-string p1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.PASSTHROUGH_COMMAND_CNF"

    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 411
    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/autochips/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/autochips/bluetooth/BluetoothEventRedirector;

    invoke-static {p1}, Lcom/autochips/bluetooth/BluetoothEventRedirector;->access$400(Lcom/autochips/bluetooth/BluetoothEventRedirector;)Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;->handlePassthroughCmdCnf(Landroid/content/Intent;)V

    :cond_3e
    :goto_4
    return-void
.end method
