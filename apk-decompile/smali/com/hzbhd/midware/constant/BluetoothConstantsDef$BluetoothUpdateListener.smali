.class public interface abstract Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;
.super Ljava/lang/Object;
.source "BluetoothConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/BluetoothConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BluetoothUpdateListener"
.end annotation


# virtual methods
.method public abstract A2DPActionChanged(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$A2DP_ACTION;)V
.end method

.method public abstract A2dpPlayStateChanged(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$A2DP_PLAY_STATE;)V
.end method

.method public abstract BTAudioChannelRequest(ZLcom/hzbhd/midware/constant/channelManagerDef$MEDIA_SOURCE_ID;)V
.end method

.method public abstract HFPActionChanged(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;)V
.end method

.method public abstract HFPMicStateChanged(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$MIC_MUTE_STATE;)V
.end method

.method public abstract HFPSwitchStateChanged(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;)V
.end method

.method public abstract InquiryStateChanged(Z)V
.end method

.method public abstract MethodResultReturned(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;)V
.end method

.method public abstract newConnection(ILjava/lang/String;)V
.end method

.method public abstract newDevicePaired(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract newDeviceSearch(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract phoneBookSync(Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;Ljava/lang/String;Ljava/lang/String;Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;)V
.end method
