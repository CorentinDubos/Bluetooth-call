.class public Lcom/hzbhd/bluetooth/BaseBluetoothHfpCallbackListener;
.super Ljava/lang/Object;
.source "BaseBluetoothHfpCallbackListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHfpActiveNumberChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onHfpAtDownloadPhonebookStateChanged(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onHfpAtDownloadSMSStateChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onHfpCallStateChanged(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onHfpErrorResponse(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpErrorInfo;)V
    .locals 0

    return-void
.end method

.method public onHfpIncomingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onHfpMicSelectionChanged(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onHfpMicVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onHfpMuteStateChanged(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onHfpOutgoingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onHfpRemoteDeviceBatteryStatusChanged(Ljava/lang/String;IIII)V
    .locals 0

    return-void
.end method

.method public onHfpRemoteDevicePhoneNumberChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onHfpRemoteDeviceRoamStatusChanged(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onHfpRemoteDeviceServiceStatusChanged(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onHfpRemoteDeviceSignalStatusChanged(Ljava/lang/String;IIII)V
    .locals 0

    return-void
.end method

.method public onHfpScoStateChanged(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onHfpSpeakerVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onHfpStateChanged(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onHfpVoiceControlStateChanged(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public retHfpRemoteDeviceInfo(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpStatusInfo;)V
    .locals 0

    return-void
.end method

.method public retHfpRemoteDeviceNetworkOperator(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public retHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public retPbapQueryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
