.class Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;
.super Landroid/os/Handler;
.source "BluetoothA2dpSinkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 159
    iget-object v0, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSG] handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$000(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "device_addr"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 163
    :goto_0
    iget-object v4, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {v4, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$500(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 164
    iget-object v5, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object v5, v5, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object v1, v1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v5, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object v1, v1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_A2DP_SINK:Landroid/bluetooth/BluetoothProfileManager$Profile;

    const-string v5, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 167
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const-string v5, "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

    if-eqz p1, :cond_7

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq p1, v8, :cond_6

    const/4 v9, 0x3

    if-eq p1, v7, :cond_5

    if-eq p1, v9, :cond_4

    const/16 v0, 0xf

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    goto/16 :goto_2

    .line 207
    :cond_1
    sput v7, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    .line 208
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object p1, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object p1, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    sget p1, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mAudioState:I

    if-nez p1, :cond_2

    const/16 p1, 0x13

    .line 211
    sput p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    goto :goto_1

    .line 213
    :cond_2
    sput v8, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    .line 215
    :goto_1
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object v0, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 200
    :cond_3
    sput v8, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    .line 201
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object p1, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget v3, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object p1, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    sput v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    .line 204
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object v0, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 194
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object p1, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object p1, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    sput v9, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    .line 197
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object v0, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    .line 184
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object p1, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget v8, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object p1, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    sput v7, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    .line 187
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    invoke-static {p1, v3}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->access$302(Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 188
    sput-object v3, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSourceAddr:Ljava/lang/String;

    .line 189
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object v2, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v2, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, v4, v7, v6, v9}, Landroid/bluetooth/BluetoothAdapter;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_2

    .line 175
    :cond_6
    sput v6, Lcom/autochips/bluetooth/avrcpct/BluetoothAvrcpCtService;->mPlaybackStatus:I

    .line 176
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object p1, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget v3, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object p1, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    sput v8, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    .line 179
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object v2, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v2, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, v4, v7, v7, v8}, Landroid/bluetooth/BluetoothAdapter;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_2

    .line 169
    :cond_7
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object p1, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    sget v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object p1, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    const/16 v0, 0xb

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    sput v0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->mA2dpSinkState:I

    .line 172
    iget-object p1, p0, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService$2;->this$0:Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;

    iget-object v0, p1, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->update_state_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Lcom/autochips/bluetooth/a2dpsink/BluetoothA2dpSinkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
