.class Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;
.super Landroid/os/Handler;
.source "bluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;Landroid/os/Looper;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v0, "bluetoothManager"

    const-string v1, "mBluetoothUpdateListener is not null"

    .line 137
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "mBluetoothUpdateListener is null"

    .line 139
    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->values()[Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    .line 143
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$2;->$SwitchMap$com$hzbhd$midwareproxy$bluetooth$bluetoothManager$BLUETOOTH_CALLBACK_MSG:[I

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 181
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$callStateChangedUpdateStruct;

    .line 182
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;->values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;

    move-result-object v1

    iget v2, p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$callStateChangedUpdateStruct;->mMethod:I

    aget-object v1, v1, v2

    invoke-static {}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;->values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;

    move-result-object v2

    iget p1, p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$callStateChangedUpdateStruct;->mCallResult:I

    aget-object p1, v2, p1

    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;->MethodResultReturned(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;)V

    goto/16 :goto_2

    .line 178
    :pswitch_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;->values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;->HFPSwitchStateChanged(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;)V

    goto/16 :goto_2

    .line 175
    :pswitch_2
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$MIC_MUTE_STATE;->values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$MIC_MUTE_STATE;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;->HFPMicStateChanged(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$MIC_MUTE_STATE;)V

    goto/16 :goto_2

    .line 172
    :pswitch_3
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$A2DP_PLAY_STATE;->values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$A2DP_PLAY_STATE;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;->A2dpPlayStateChanged(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$A2DP_PLAY_STATE;)V

    goto/16 :goto_2

    .line 169
    :pswitch_4
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;->values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;->HFPActionChanged(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;)V

    goto/16 :goto_2

    .line 166
    :pswitch_5
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$A2DP_ACTION;->values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$A2DP_ACTION;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;->A2DPActionChanged(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$A2DP_ACTION;)V

    goto/16 :goto_2

    .line 163
    :pswitch_6
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;->InquiryStateChanged(Z)V

    goto :goto_2

    .line 160
    :pswitch_7
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;->newConnection(ILjava/lang/String;)V

    goto :goto_2

    .line 156
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;

    .line 157
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v0

    iget-object v1, p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;->mDevAddr:Ljava/lang/String;

    iget-object p1, p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;->mDevName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;->newDeviceSearch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 152
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;

    .line 153
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v0

    iget-object v1, p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;->mDevAddr:Ljava/lang/String;

    iget-object p1, p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$newPairedDeviceStruct;->mDevName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;->newDevicePaired(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 149
    :pswitch_a
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {}, Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;->values()[Lcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->arg2:I

    aget-object p1, v2, p1

    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;->BTAudioChannelRequest(ZLcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;)V

    goto :goto_2

    .line 145
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;

    .line 146
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    move-result-object v1

    iget v2, p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;->mRecordType:I

    aget-object v1, v1, v2

    iget-object v2, p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;->mFullName:Ljava/lang/String;

    iget-object v3, p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;->mPhoneNumber:Ljava/lang/String;

    invoke-static {}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    move-result-object v4

    iget p1, p1, Lcom/hzbhd/midwareproxy/bluetooth/bluetoothManager$phoneBookSyncUpdateStruct;->mState:I

    aget-object p1, v4, p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;->phoneBookSync(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;Ljava/lang/String;Ljava/lang/String;Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
