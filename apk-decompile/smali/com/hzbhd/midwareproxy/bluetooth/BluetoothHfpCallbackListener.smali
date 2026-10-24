.class public interface abstract Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;
.super Ljava/lang/Object;
.source "BluetoothHfpCallbackListener.java"


# virtual methods
.method public abstract onHfpActiveNumberChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onHfpAtDownloadPhonebookStateChanged(Ljava/lang/String;II)V
.end method

.method public abstract onHfpAtDownloadSMSStateChanged(Ljava/lang/String;I)V
.end method

.method public abstract onHfpCallStateChanged(Ljava/lang/String;II)V
.end method

.method public abstract onHfpErrorResponse(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpErrorInfo;)V
.end method

.method public abstract onHfpIncomingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onHfpMicSelectionChanged(Ljava/lang/String;II)V
.end method

.method public abstract onHfpMicVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onHfpMuteStateChanged(Ljava/lang/String;II)V
.end method

.method public abstract onHfpOutgoingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onHfpRemoteDeviceBatteryStatusChanged(Ljava/lang/String;IIII)V
.end method

.method public abstract onHfpRemoteDevicePhoneNumberChanged(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onHfpRemoteDeviceRoamStatusChanged(Ljava/lang/String;Z)V
.end method

.method public abstract onHfpRemoteDeviceServiceStatusChanged(Ljava/lang/String;Z)V
.end method

.method public abstract onHfpRemoteDeviceSignalStatusChanged(Ljava/lang/String;IIII)V
.end method

.method public abstract onHfpScoStateChanged(Ljava/lang/String;II)V
.end method

.method public abstract onHfpSpeakerVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onHfpStateChanged(Ljava/lang/String;II)V
.end method

.method public abstract onHfpVoiceControlStateChanged(Ljava/lang/String;Z)V
.end method

.method public abstract retHfpRemoteDeviceInfo(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpStatusInfo;)V
.end method

.method public abstract retHfpRemoteDeviceNetworkOperator(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract retHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract retPbapQueryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method
