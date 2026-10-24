.class public abstract Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;
.super Landroid/os/Binder;
.source "UiServiceCommand.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/UiServiceCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/UiServiceCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.UiServiceCommand"

.field static final TRANSACTION_addBleListener:I = 0xfd

.field static final TRANSACTION_avrcpPlayOrPause:I = 0xd3

.field static final TRANSACTION_bleConn:I = 0xf9

.field static final TRANSACTION_bleDisConn:I = 0xfa

.field static final TRANSACTION_bleScanStart:I = 0xf6

.field static final TRANSACTION_bleScanStop:I = 0xf7

.field static final TRANSACTION_disableA2dp:I = 0x100

.field static final TRANSACTION_enableA2dp:I = 0xff

.field static final TRANSACTION_enterBluetoothTestMode:I = 0xef

.field static final TRANSACTION_getA2dpConnectedDeviceAddress:I = 0x6b

.field static final TRANSACTION_getA2dpCurrentState:I = 0x6c

.field static final TRANSACTION_getAppleDeviceAuthState:I = 0xb8

.field static final TRANSACTION_getAutoConnectionStatus:I = 0xc9

.field static final TRANSACTION_getAvrcpConnectedDeviceAddress:I = 0x70

.field static final TRANSACTION_getAvrcpCurrentState:I = 0x6d

.field static final TRANSACTION_getBluetoothCurrentState:I = 0x12

.field static final TRANSACTION_getBluetoothLocalAdapterAddress:I = 0xf

.field static final TRANSACTION_getBluetoothLocalAdapterName:I = 0xd

.field static final TRANSACTION_getBluetoothRemoteDeviceName:I = 0xe

.field static final TRANSACTION_getCalibrationClick:I = 0xec

.field static final TRANSACTION_getCalibrationState:I = 0xeb

.field static final TRANSACTION_getCallTime:I = 0xcd

.field static final TRANSACTION_getCallerId:I = 0xce

.field static final TRANSACTION_getConnectedHfpDeviceCount:I = 0xae

.field static final TRANSACTION_getCurrentCallNumber:I = 0xca

.field static final TRANSACTION_getCurrentImei:I = 0xed

.field static final TRANSACTION_getCurrentSource:I = 0xd4

.field static final TRANSACTION_getCurrentSyncState:I = 0xd1

.field static final TRANSACTION_getCurrentSyncType:I = 0xd0

.field static final TRANSACTION_getDeviceX:I = 0xdc

.field static final TRANSACTION_getDeviceY:I = 0xdd

.field static final TRANSACTION_getHCaliX1:I = 0xe2

.field static final TRANSACTION_getHCaliX2:I = 0xe3

.field static final TRANSACTION_getHCaliY1:I = 0xe4

.field static final TRANSACTION_getHCaliY2:I = 0xe5

.field static final TRANSACTION_getHXPhoneLen:I = 0xde

.field static final TRANSACTION_getHYPhoneLen:I = 0xdf

.field static final TRANSACTION_getHfpCallCounts:I = 0xc8

.field static final TRANSACTION_getHfpCallState:I = 0xc7

.field static final TRANSACTION_getHfpConnectedDeviceAddress:I = 0x20

.field static final TRANSACTION_getHfpConnectedDeviceVendorID:I = 0xb9

.field static final TRANSACTION_getHfpCurrentScoState:I = 0x22

.field static final TRANSACTION_getHfpCurrentState:I = 0x21

.field static final TRANSACTION_getHfpMicSelection:I = 0xc5

.field static final TRANSACTION_getHfpRemoteDeviceBatteryStatus:I = 0x35

.field static final TRANSACTION_getHfpRemoteDeviceName:I = 0x2f

.field static final TRANSACTION_getHfpRemoteDeviceSignalStatus:I = 0x36

.field static final TRANSACTION_getHidCurrentState:I = 0xa9

.field static final TRANSACTION_getHspConnectedDeviceAddress:I = 0x40

.field static final TRANSACTION_getHspCurrentScoState:I = 0x42

.field static final TRANSACTION_getHspCurrentState:I = 0x41

.field static final TRANSACTION_getImportVCardState:I = 0xd2

.field static final TRANSACTION_getLastCallNumber:I = 0xcb

.field static final TRANSACTION_getMapCurrentState:I = 0x65

.field static final TRANSACTION_getMapRegisterState:I = 0x66

.field static final TRANSACTION_getPCaliX1:I = 0xe6

.field static final TRANSACTION_getPCaliX2:I = 0xe7

.field static final TRANSACTION_getPCaliY1:I = 0xe8

.field static final TRANSACTION_getPCaliY2:I = 0xe9

.field static final TRANSACTION_getPXPhoneLen:I = 0xe0

.field static final TRANSACTION_getPYPhoneLen:I = 0xe1

.field static final TRANSACTION_getPanConnectedDeviceAddress:I = 0xa1

.field static final TRANSACTION_getPanCurrentState:I = 0xa2

.field static final TRANSACTION_getPbapCurrentState:I = 0x59

.field static final TRANSACTION_getPhoneResolution:I = 0xdb

.field static final TRANSACTION_getPhoneScreenState:I = 0xd9

.field static final TRANSACTION_getPhoneScreenType:I = 0xda

.field static final TRANSACTION_getPinCode:I = 0xc1

.field static final TRANSACTION_getSoftwareVersion:I = 0xc2

.field static final TRANSACTION_getSppCurrentState:I = 0xb2

.field static final TRANSACTION_getTargetAddress:I = 0xab

.field static final TRANSACTION_getThreeWayCallNumber:I = 0xcc

.field static final TRANSACTION_getThreeWayCallTime:I = 0xcf

.field static final TRANSACTION_isA2dpNativeRunning:I = 0x9b

.field static final TRANSACTION_isA2dpPlaying:I = 0xd7

.field static final TRANSACTION_isAAConnected:I = 0x102

.field static final TRANSACTION_isAlreadyReadPairedDevices:I = 0xbb

.field static final TRANSACTION_isAppleDeviceFinishAuth:I = 0xb7

.field static final TRANSACTION_isAvrcp13Supported:I = 0x71

.field static final TRANSACTION_isAvrcp14Supported:I = 0x72

.field static final TRANSACTION_isAvrcpBrowsingChannelEstablished:I = 0x97

.field static final TRANSACTION_isBluetoothAutoReconnectEnable:I = 0x17

.field static final TRANSACTION_isBluetoothDiscoverable:I = 0x14

.field static final TRANSACTION_isBluetoothEnable:I = 0x11

.field static final TRANSACTION_isBluetoothScanning:I = 0x13

.field static final TRANSACTION_isCalibration:I = 0xea

.field static final TRANSACTION_isCallingFlag:I = 0xf2

.field static final TRANSACTION_isDevicePaired:I = 0x103

.field static final TRANSACTION_isFirstBootUp:I = 0xb1

.field static final TRANSACTION_isForiPodDisconnectA2DP:I = 0xbc

.field static final TRANSACTION_isHfpAutoAnswer:I = 0xba

.field static final TRANSACTION_isHfpConnectedAppleDevice:I = 0xb6

.field static final TRANSACTION_isHfpRemoteDeviceOnRoaming:I = 0x34

.field static final TRANSACTION_isHfpRemoteDeviceTelecomServiceOn:I = 0x33

.field static final TRANSACTION_isHfpVoiceControlOn:I = 0x23

.field static final TRANSACTION_isMapNotificationRegistered:I = 0x60

.field static final TRANSACTION_isMicMute:I = 0xf3

.field static final TRANSACTION_isPhoneBookLoading:I = 0xf4

.field static final TRANSACTION_isPhonebookAutoSync:I = 0xbd

.field static final TRANSACTION_isRing:I = 0xf5

.field static final TRANSACTION_isScan:I = 0xf8

.field static final TRANSACTION_isSppConnected:I = 0x4e

.field static final TRANSACTION_isTwinConnectEnable:I = 0xbe

.field static final TRANSACTION_refreshConn:I = 0xfb

.field static final TRANSACTION_registerA2dpAvrcpCallback:I = 0x67

.field static final TRANSACTION_registerHfpCallback:I = 0x1c

.field static final TRANSACTION_registerHidCallback:I = 0xa3

.field static final TRANSACTION_registerHspCallback:I = 0x3c

.field static final TRANSACTION_registerMapCallback:I = 0x5a

.field static final TRANSACTION_registerNforeServiceCallback:I = 0x1

.field static final TRANSACTION_registerPanCallback:I = 0x9d

.field static final TRANSACTION_registerPbapCallback:I = 0x50

.field static final TRANSACTION_registerSppCallback:I = 0x49

.field static final TRANSACTION_removeBleListener:I = 0xfe

.field static final TRANSACTION_reqA2dpConnect:I = 0x69

.field static final TRANSACTION_reqA2dpDisconnect:I = 0x6a

.field static final TRANSACTION_reqAvrcpAbortMetadataReceiving:I = 0x87

.field static final TRANSACTION_reqAvrcpAddToNowPlaying:I = 0x96

.field static final TRANSACTION_reqAvrcpBackward:I = 0x77

.field static final TRANSACTION_reqAvrcpChangePath:I = 0x92

.field static final TRANSACTION_reqAvrcpForward:I = 0x76

.field static final TRANSACTION_reqAvrcpGetCapabilitiesSupportEvent:I = 0x7e

.field static final TRANSACTION_reqAvrcpGetElementAttributesPlaying:I = 0x83

.field static final TRANSACTION_reqAvrcpGetFolderItems:I = 0x91

.field static final TRANSACTION_reqAvrcpGetItemAttributes:I = 0x93

.field static final TRANSACTION_reqAvrcpGetPlayStatus:I = 0x84

.field static final TRANSACTION_reqAvrcpGetPlayerSettingAttributeText:I = 0x8b

.field static final TRANSACTION_reqAvrcpGetPlayerSettingAttributesList:I = 0x7f

.field static final TRANSACTION_reqAvrcpGetPlayerSettingCurrentValues:I = 0x81

.field static final TRANSACTION_reqAvrcpGetPlayerSettingValueText:I = 0x8c

.field static final TRANSACTION_reqAvrcpGetPlayerSettingValuesList:I = 0x80

.field static final TRANSACTION_reqAvrcpInformBatteryStatusOfCt:I = 0x8e

.field static final TRANSACTION_reqAvrcpInformDisplayableCharset:I = 0x8d

.field static final TRANSACTION_reqAvrcpNextGroup:I = 0x88

.field static final TRANSACTION_reqAvrcpPause:I = 0x75

.field static final TRANSACTION_reqAvrcpPlay:I = 0x73

.field static final TRANSACTION_reqAvrcpPlayPause:I = 0xaf

.field static final TRANSACTION_reqAvrcpPlaySelectedItem:I = 0x94

.field static final TRANSACTION_reqAvrcpPreviousGroup:I = 0x89

.field static final TRANSACTION_reqAvrcpRegisterEventWatcher:I = 0x85

.field static final TRANSACTION_reqAvrcpSearch:I = 0x95

.field static final TRANSACTION_reqAvrcpSetAbsoluteVolume:I = 0x98

.field static final TRANSACTION_reqAvrcpSetAddressedPlayer:I = 0x8f

.field static final TRANSACTION_reqAvrcpSetBrowsedPlayer:I = 0x90

.field static final TRANSACTION_reqAvrcpSetMetadataCompanyId:I = 0x8a

.field static final TRANSACTION_reqAvrcpSetPlayerSettingValue:I = 0x82

.field static final TRANSACTION_reqAvrcpStartFastForward:I = 0x7a

.field static final TRANSACTION_reqAvrcpStartRewind:I = 0x7c

.field static final TRANSACTION_reqAvrcpStop:I = 0x74

.field static final TRANSACTION_reqAvrcpStopFastForward:I = 0x7b

.field static final TRANSACTION_reqAvrcpStopRewind:I = 0x7d

.field static final TRANSACTION_reqAvrcpUnregisterEventWatcher:I = 0x86

.field static final TRANSACTION_reqAvrcpUpdateSongStatus:I = 0x9c

.field static final TRANSACTION_reqAvrcpVolumeDown:I = 0x79

.field static final TRANSACTION_reqAvrcpVolumeUp:I = 0x78

.field static final TRANSACTION_reqBluetoothConnectAll:I = 0x18

.field static final TRANSACTION_reqBluetoothDisconnectAll:I = 0x19

.field static final TRANSACTION_reqBluetoothFoundDevices:I = 0xac

.field static final TRANSACTION_reqBluetoothPair:I = 0x7

.field static final TRANSACTION_reqBluetoothPairedDevices:I = 0xb

.field static final TRANSACTION_reqBluetoothPairedDevicesCount:I = 0xad

.field static final TRANSACTION_reqBluetoothPairedDevicesExtend:I = 0xc

.field static final TRANSACTION_reqBluetoothRemoteUuids:I = 0x1b

.field static final TRANSACTION_reqBluetoothScanning:I = 0x6

.field static final TRANSACTION_reqBluetoothUnpair:I = 0x8

.field static final TRANSACTION_reqBluetoothUnpairAll:I = 0x9

.field static final TRANSACTION_reqBluetoothUnpairAllNextTime:I = 0xa

.field static final TRANSACTION_reqCancelPbapDownload:I = 0x53

.field static final TRANSACTION_reqDisconnectAll:I = 0x1a

.field static final TRANSACTION_reqHfpAnswerCall:I = 0x27

.field static final TRANSACTION_reqHfpAtDownloadPhonebook:I = 0x38

.field static final TRANSACTION_reqHfpAtDownloadSMS:I = 0x39

.field static final TRANSACTION_reqHfpAudioTransfer:I = 0x2c

.field static final TRANSACTION_reqHfpConnect:I = 0x1e

.field static final TRANSACTION_reqHfpDialCall:I = 0x24

.field static final TRANSACTION_reqHfpDisconnect:I = 0x1f

.field static final TRANSACTION_reqHfpMemoryDial:I = 0x26

.field static final TRANSACTION_reqHfpMicMute:I = 0xc6

.field static final TRANSACTION_reqHfpMicSelection:I = 0xc4

.field static final TRANSACTION_reqHfpMultiCallControl:I = 0x2a

.field static final TRANSACTION_reqHfpReDial:I = 0x25

.field static final TRANSACTION_reqHfpRejectIncomingCall:I = 0x28

.field static final TRANSACTION_reqHfpRemoteDeviceInfo:I = 0x2e

.field static final TRANSACTION_reqHfpRemoteDeviceNetworkOperator:I = 0x31

.field static final TRANSACTION_reqHfpRemoteDevicePhoneNumber:I = 0x30

.field static final TRANSACTION_reqHfpRemoteDeviceSubscriberNumber:I = 0x32

.field static final TRANSACTION_reqHfpRemoteDeviceVolumeSync:I = 0x3a

.field static final TRANSACTION_reqHfpSendDtmf:I = 0x2b

.field static final TRANSACTION_reqHfpTerminateOngoingCall:I = 0x29

.field static final TRANSACTION_reqHfpVoiceDial:I = 0x3b

.field static final TRANSACTION_reqHidConnect:I = 0xa5

.field static final TRANSACTION_reqHidDisconnect:I = 0xa6

.field static final TRANSACTION_reqHspAnswerCall:I = 0x44

.field static final TRANSACTION_reqHspAudioTransfer:I = 0x47

.field static final TRANSACTION_reqHspConnect:I = 0x3e

.field static final TRANSACTION_reqHspDisconnect:I = 0x3f

.field static final TRANSACTION_reqHspReDial:I = 0x43

.field static final TRANSACTION_reqHspRejectIncomingCall:I = 0x45

.field static final TRANSACTION_reqHspRemoteDeviceVolumeSync:I = 0x48

.field static final TRANSACTION_reqHspTerminateOngoingCall:I = 0x46

.field static final TRANSACTION_reqMapCleanDatabase:I = 0x64

.field static final TRANSACTION_reqMapDatabaseAvailable:I = 0x62

.field static final TRANSACTION_reqMapDeleteDatabaseByAddress:I = 0x63

.field static final TRANSACTION_reqMapDownloadAllMessages:I = 0x5c

.field static final TRANSACTION_reqMapDownloadInterrupt:I = 0x61

.field static final TRANSACTION_reqMapDownloadSingleMessage:I = 0x5d

.field static final TRANSACTION_reqMapRegisterNotification:I = 0x5e

.field static final TRANSACTION_reqMapUnregisterNotification:I = 0x5f

.field static final TRANSACTION_reqPanConnect:I = 0x9f

.field static final TRANSACTION_reqPanDisconnect:I = 0xa0

.field static final TRANSACTION_reqPbapCleanDatabase:I = 0x57

.field static final TRANSACTION_reqPbapDatabaseAvailable:I = 0x54

.field static final TRANSACTION_reqPbapDeleteDatabaseByAddress:I = 0x56

.field static final TRANSACTION_reqPbapDownloadAllVcards:I = 0x52

.field static final TRANSACTION_reqPbapDownloadInterrupt:I = 0x58

.field static final TRANSACTION_reqPbapQueryName:I = 0x55

.field static final TRANSACTION_reqSoftwareUpdate:I = 0xb0

.field static final TRANSACTION_reqSppConnect:I = 0x4b

.field static final TRANSACTION_reqSppConnectedDeviceAddressList:I = 0x4d

.field static final TRANSACTION_reqSppDisconnect:I = 0x4c

.field static final TRANSACTION_reqSppSendData:I = 0x4f

.field static final TRANSACTION_requestAudioFocus:I = 0xd5

.field static final TRANSACTION_requestBTAudioChannel:I = 0xd6

.field static final TRANSACTION_sendData:I = 0xfc

.field static final TRANSACTION_sendHidMouseCommand:I = 0xa7

.field static final TRANSACTION_sendHidVirtualKeyCommand:I = 0xa8

.field static final TRANSACTION_sendSppMessage:I = 0xd8

.field static final TRANSACTION_setA2dpLocalMute:I = 0x6f

.field static final TRANSACTION_setA2dpLocalVolume:I = 0x6e

.field static final TRANSACTION_setA2dpNativeStart:I = 0x99

.field static final TRANSACTION_setA2dpNativeStop:I = 0x9a

.field static final TRANSACTION_setAAConnected:I = 0x101

.field static final TRANSACTION_setActivePhone:I = 0xb4

.field static final TRANSACTION_setBluetoothAutoReconnect:I = 0x15

.field static final TRANSACTION_setBluetoothAutoReconnectForceOor:I = 0x16

.field static final TRANSACTION_setBluetoothDiscoverableDuration:I = 0x4

.field static final TRANSACTION_setBluetoothDiscoverablePermanent:I = 0x5

.field static final TRANSACTION_setBluetoothEnable:I = 0x3

.field static final TRANSACTION_setBluetoothLocalAdapterName:I = 0x10

.field static final TRANSACTION_setCalibration:I = 0xee

.field static final TRANSACTION_setHfpAtNewSmsNotify:I = 0x37

.field static final TRANSACTION_setHfpAutoAnswer:I = 0xb3

.field static final TRANSACTION_setHfpLocalRingEnable:I = 0x2d

.field static final TRANSACTION_setOutputFrequencyChannel:I = 0xf0

.field static final TRANSACTION_setOutputFrequencyChannelExtended:I = 0xf1

.field static final TRANSACTION_setPhonebookAutoSyncEnable:I = 0xc3

.field static final TRANSACTION_setPinCode:I = 0xc0

.field static final TRANSACTION_setTargetAddress:I = 0xaa

.field static final TRANSACTION_setTouchesOptions:I = 0xb5

.field static final TRANSACTION_setTwinConnectEnable:I = 0xbf

.field static final TRANSACTION_unregisterA2dpAvrcpCallback:I = 0x68

.field static final TRANSACTION_unregisterHfpCallback:I = 0x1d

.field static final TRANSACTION_unregisterHidCallback:I = 0xa4

.field static final TRANSACTION_unregisterHspCallback:I = 0x3d

.field static final TRANSACTION_unregisterMapCallback:I = 0x5b

.field static final TRANSACTION_unregisterNforeServiceCallback:I = 0x2

.field static final TRANSACTION_unregisterPanCallback:I = 0x9e

.field static final TRANSACTION_unregisterPbapCallback:I = 0x51

.field static final TRANSACTION_unregisterSppCallback:I = 0x4a


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2954
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 2955
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiServiceCommand;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 2966
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2967
    instance-of v1, v0, Lnfore/android/bt/servicemanager/UiServiceCommand;

    if-eqz v1, :cond_1

    .line 2968
    check-cast v0, Lnfore/android/bt/servicemanager/UiServiceCommand;

    return-object v0

    .line 2970
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;
    .locals 1

    .line 13006
    sget-object v0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiServiceCommand;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/UiServiceCommand;)Z
    .locals 1

    .line 12999
    sget-object v0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiServiceCommand;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 13000
    sput-object p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiServiceCommand;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    if-eq p1, v0, :cond_12

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5469
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 5459
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5461
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5462
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isDevicePaired(Ljava/lang/String;)Z

    move-result p1

    .line 5463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5464
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5451
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5452
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isAAConnected()Z

    move-result p1

    .line 5453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5454
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5440
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5442
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v0, v1

    .line 5445
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setAAConnected(Ljava/lang/String;Z)V

    .line 5446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5433
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5434
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->disableA2dp()V

    .line 5435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5426
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5427
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->enableA2dp()V

    .line 5428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5417
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5419
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/BleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/BleCallback;

    move-result-object p1

    .line 5420
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->removeBleListener(Lnfore/android/bt/servicemanager/BleCallback;)V

    .line 5421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5408
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5410
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/BleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/BleCallback;

    move-result-object p1

    .line 5411
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->addBleListener(Lnfore/android/bt/servicemanager/BleCallback;)V

    .line 5412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5399
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5402
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->sendData(Ljava/lang/String;)V

    .line 5403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5392
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5393
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->refreshConn()V

    .line 5394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5383
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5385
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5386
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->bleDisConn(Ljava/lang/String;)V

    .line 5387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5372
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5374
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5376
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5377
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->bleConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5364
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5365
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isScan()Z

    move-result p1

    .line 5366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5367
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5357
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5358
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->bleScanStop()V

    .line 5359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5350
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5351
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->bleScanStart()V

    .line 5352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5342
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5343
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isRing()Z

    move-result p1

    .line 5344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5345
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5334
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5335
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isPhoneBookLoading()Z

    move-result p1

    .line 5336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5337
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5326
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5327
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isMicMute()Z

    move-result p1

    .line 5328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5329
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5318
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5319
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isCallingFlag()Z

    move-result p1

    .line 5320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5321
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5308
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5311
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setOutputFrequencyChannelExtended(I)Z

    move-result p1

    .line 5312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5313
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5296
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 5301
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setOutputFrequencyChannel(II)Z

    move-result p1

    .line 5302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5303
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5288
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5289
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->enterBluetoothTestMode()Z

    move-result p1

    .line 5290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5291
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5279
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 5282
    :cond_1
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setCalibration(Z)V

    .line 5283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5271
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5272
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getCurrentImei()Ljava/lang/String;

    move-result-object p1

    .line 5273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5274
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 5263
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5264
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getCalibrationClick()I

    move-result p1

    .line 5265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5266
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5255
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5256
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getCalibrationState()I

    move-result p1

    .line 5257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5258
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5247
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5248
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isCalibration()Z

    move-result p1

    .line 5249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5250
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5239
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPCaliY2()I

    move-result p1

    .line 5241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5242
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5231
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5232
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPCaliY1()I

    move-result p1

    .line 5233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5234
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5223
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5224
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPCaliX2()I

    move-result p1

    .line 5225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5226
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5215
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5216
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPCaliX1()I

    move-result p1

    .line 5217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5218
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5207
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5208
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHCaliY2()I

    move-result p1

    .line 5209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5210
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5199
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5200
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHCaliY1()I

    move-result p1

    .line 5201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5202
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5191
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5192
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHCaliX2()I

    move-result p1

    .line 5193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5194
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5183
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5184
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHCaliX1()I

    move-result p1

    .line 5185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5186
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5175
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5176
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPYPhoneLen()I

    move-result p1

    .line 5177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5178
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5167
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5168
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPXPhoneLen()I

    move-result p1

    .line 5169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5170
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5159
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5160
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHYPhoneLen()I

    move-result p1

    .line 5161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5162
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5151
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5152
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHXPhoneLen()I

    move-result p1

    .line 5153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5143
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5144
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDeviceY()I

    move-result p1

    .line 5145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5146
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5135
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5136
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDeviceX()I

    move-result p1

    .line 5137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5127
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5128
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPhoneResolution()Ljava/lang/String;

    move-result-object p1

    .line 5129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5130
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 5119
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5120
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPhoneScreenType()I

    move-result p1

    .line 5121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5111
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5112
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPhoneScreenState()I

    move-result p1

    .line 5113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5099
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5104
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->sendSppMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 5105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5091
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5092
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isA2dpPlaying()Z

    move-result p1

    .line 5093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5094
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5084
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5085
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->requestBTAudioChannel()V

    .line 5086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5077
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5078
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->requestAudioFocus()V

    .line 5079
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5069
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5070
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getCurrentSource()Ljava/lang/String;

    move-result-object p1

    .line 5071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5072
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 5061
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5062
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->avrcpPlayOrPause()Z

    move-result p1

    .line 5063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5064
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5053
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5054
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getImportVCardState()Z

    move-result p1

    .line 5055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5056
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5045
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5046
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getCurrentSyncState()I

    move-result p1

    .line 5047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5048
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5037
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5038
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getCurrentSyncType()I

    move-result p1

    .line 5039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5040
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5029
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5030
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getThreeWayCallTime()I

    move-result p1

    .line 5031
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5032
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5019
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5021
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5022
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getCallerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5024
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 5009
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5011
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5012
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getCallTime(Ljava/lang/String;)I

    move-result p1

    .line 5013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5014
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 5001
    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5002
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getThreeWayCallNumber()Ljava/lang/String;

    move-result-object p1

    .line 5003
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5004
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 4993
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4994
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getLastCallNumber()Ljava/lang/String;

    move-result-object p1

    .line 4995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4996
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 4985
    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4986
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object p1

    .line 4987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4988
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 4977
    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4978
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getAutoConnectionStatus()I

    move-result p1

    .line 4979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4980
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4969
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4970
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHfpCallCounts()I

    move-result p1

    .line 4971
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4972
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4961
    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4962
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHfpCallState()I

    move-result p1

    .line 4963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4964
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4953
    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4954
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpMicMute()Z

    move-result p1

    .line 4955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4956
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4945
    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4946
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHfpMicSelection()I

    move-result p1

    .line 4947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4948
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4937
    :pswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4938
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpMicSelection()Z

    move-result p1

    .line 4939
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4940
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4928
    :pswitch_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4930
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 4931
    :cond_2
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setPhonebookAutoSyncEnable(Z)V

    .line 4932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4920
    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4921
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    .line 4922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4923
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 4912
    :pswitch_42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4913
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPinCode()Ljava/lang/String;

    move-result-object p1

    .line 4914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4915
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 4903
    :pswitch_43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4905
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4906
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setPinCode(Ljava/lang/String;)V

    .line 4907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4894
    :pswitch_44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4896
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 4897
    :cond_3
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setTwinConnectEnable(Z)V

    .line 4898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4886
    :pswitch_45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4887
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isTwinConnectEnable()Z

    move-result p1

    .line 4888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4889
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4878
    :pswitch_46
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4879
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isPhonebookAutoSync()Z

    move-result p1

    .line 4880
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4881
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4870
    :pswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4871
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isForiPodDisconnectA2DP()Z

    move-result p1

    .line 4872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4873
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4862
    :pswitch_48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4863
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isAlreadyReadPairedDevices()Z

    move-result p1

    .line 4864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4865
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4854
    :pswitch_49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4855
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isHfpAutoAnswer()Z

    move-result p1

    .line 4856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4857
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4846
    :pswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4847
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHfpConnectedDeviceVendorID()Ljava/lang/String;

    move-result-object p1

    .line 4848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4849
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 4838
    :pswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4839
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getAppleDeviceAuthState()I

    move-result p1

    .line 4840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4841
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4830
    :pswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4831
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isAppleDeviceFinishAuth()Z

    move-result p1

    .line 4832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4833
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4822
    :pswitch_4d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4823
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isHfpConnectedAppleDevice()Z

    move-result p1

    .line 4824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4825
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4813
    :pswitch_4e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4815
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 4816
    :cond_4
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setTouchesOptions(Z)V

    .line 4817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4804
    :pswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4806
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4807
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setActivePhone(Ljava/lang/String;)V

    .line 4808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4795
    :pswitch_50
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    .line 4798
    :cond_5
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setHfpAutoAnswer(Z)V

    .line 4799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4785
    :pswitch_51
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4787
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4788
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getSppCurrentState(Ljava/lang/String;)I

    move-result p1

    .line 4789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4790
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4777
    :pswitch_52
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4778
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isFirstBootUp()Z

    move-result p1

    .line 4779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4780
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4769
    :pswitch_53
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4770
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqSoftwareUpdate()Z

    move-result p1

    .line 4771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4772
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4761
    :pswitch_54
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4762
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpPlayPause()Z

    move-result p1

    .line 4763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4764
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4753
    :pswitch_55
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4754
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getConnectedHfpDeviceCount()I

    move-result p1

    .line 4755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4756
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4745
    :pswitch_56
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4746
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqBluetoothPairedDevicesCount()I

    move-result p1

    .line 4747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4748
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4737
    :pswitch_57
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4738
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqBluetoothFoundDevices()Z

    move-result p1

    .line 4739
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4740
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4729
    :pswitch_58
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4730
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getTargetAddress()Ljava/lang/String;

    move-result-object p1

    .line 4731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4732
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 4720
    :pswitch_59
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4722
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4723
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setTargetAddress(Ljava/lang/String;)V

    .line 4724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4712
    :pswitch_5a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4713
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHidCurrentState()I

    move-result p1

    .line 4714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4715
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4700
    :pswitch_5b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4702
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 4705
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->sendHidVirtualKeyCommand(II)I

    move-result p1

    .line 4706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4707
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4684
    :pswitch_5c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 4690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4692
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 4693
    invoke-virtual {p0, p1, p4, v0, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->sendHidMouseCommand(IIII)I

    move-result p1

    .line 4694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4695
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4674
    :pswitch_5d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4676
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4677
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHidDisconnect(Ljava/lang/String;)Z

    move-result p1

    .line 4678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4679
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4664
    :pswitch_5e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4666
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4667
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHidConnect(Ljava/lang/String;)Z

    move-result p1

    .line 4668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4669
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4654
    :pswitch_5f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4656
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiHidCallback;

    move-result-object p1

    .line 4657
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->unregisterHidCallback(Lnfore/android/bt/servicemanager/UiHidCallback;)Z

    move-result p1

    .line 4658
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4659
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4644
    :pswitch_60
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4646
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiHidCallback;

    move-result-object p1

    .line 4647
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->registerHidCallback(Lnfore/android/bt/servicemanager/UiHidCallback;)Z

    move-result p1

    .line 4648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4649
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4636
    :pswitch_61
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4637
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPanCurrentState()I

    move-result p1

    .line 4638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4639
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4628
    :pswitch_62
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4629
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPanConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p1

    .line 4630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4631
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 4618
    :pswitch_63
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4620
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4621
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqPanDisconnect(Ljava/lang/String;)Z

    move-result p1

    .line 4622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4623
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4608
    :pswitch_64
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4610
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4611
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqPanConnect(Ljava/lang/String;)Z

    move-result p1

    .line 4612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4613
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4598
    :pswitch_65
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4600
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiPanCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiPanCallback;

    move-result-object p1

    .line 4601
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->unregisterPanCallback(Lnfore/android/bt/servicemanager/UiPanCallback;)Z

    move-result p1

    .line 4602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4603
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4588
    :pswitch_66
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4590
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiPanCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiPanCallback;

    move-result-object p1

    .line 4591
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->registerPanCallback(Lnfore/android/bt/servicemanager/UiPanCallback;)Z

    move-result p1

    .line 4592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4593
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4581
    :pswitch_67
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4582
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpUpdateSongStatus()V

    .line 4583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4573
    :pswitch_68
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4574
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isA2dpNativeRunning()Z

    move-result p1

    .line 4575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4576
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4566
    :pswitch_69
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4567
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setA2dpNativeStop()V

    .line 4568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4559
    :pswitch_6a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4560
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setA2dpNativeStart()V

    .line 4561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4547
    :pswitch_6b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4549
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4551
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 4552
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpSetAbsoluteVolume(Ljava/lang/String;B)Z

    move-result p1

    .line 4553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4554
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4537
    :pswitch_6c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4539
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4540
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isAvrcpBrowsingChannelEstablished(Ljava/lang/String;)Z

    move-result p1

    .line 4541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4542
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4521
    :pswitch_6d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4523
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4525
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 4527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4529
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    .line 4530
    invoke-virtual/range {v2 .. v7}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpAddToNowPlaying(Ljava/lang/String;BIJ)Z

    move-result p1

    .line 4531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4532
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4509
    :pswitch_6e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4511
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4513
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4514
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpSearch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 4515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4516
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4493
    :pswitch_6f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4495
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4497
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 4499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4501
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    .line 4502
    invoke-virtual/range {v2 .. v7}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpPlaySelectedItem(Ljava/lang/String;BIJ)Z

    move-result p1

    .line 4503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4504
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4477
    :pswitch_70
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4481
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 4483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4485
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    .line 4486
    invoke-virtual/range {v2 .. v7}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpGetItemAttributes(Ljava/lang/String;BIJ)Z

    move-result p1

    .line 4487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4488
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4461
    :pswitch_71
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4463
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4467
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 4469
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    move-object v2, p0

    .line 4470
    invoke-virtual/range {v2 .. v7}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpChangePath(Ljava/lang/String;IJB)Z

    move-result p1

    .line 4471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4472
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4449
    :pswitch_72
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4451
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4453
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 4454
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpGetFolderItems(Ljava/lang/String;B)Z

    move-result p1

    .line 4455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4456
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4437
    :pswitch_73
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4439
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 4442
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpSetBrowsedPlayer(Ljava/lang/String;I)Z

    move-result p1

    .line 4443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4444
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4425
    :pswitch_74
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 4430
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpSetAddressedPlayer(Ljava/lang/String;I)Z

    move-result p1

    .line 4431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4432
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4413
    :pswitch_75
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4415
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4417
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 4418
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpInformBatteryStatusOfCt(Ljava/lang/String;B)Z

    move-result p1

    .line 4419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4420
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4401
    :pswitch_76
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4405
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 4406
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpInformDisplayableCharset(Ljava/lang/String;[I)Z

    move-result p1

    .line 4407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4408
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4387
    :pswitch_77
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4389
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4391
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 4393
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 4394
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpGetPlayerSettingValueText(Ljava/lang/String;BB)Z

    move-result p1

    .line 4395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4396
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4375
    :pswitch_78
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4379
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 4380
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpGetPlayerSettingAttributeText(Ljava/lang/String;B)Z

    move-result p1

    .line 4381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4382
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4363
    :pswitch_79
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4365
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 4368
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpSetMetadataCompanyId(Ljava/lang/String;I)Z

    move-result p1

    .line 4369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4370
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4353
    :pswitch_7a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4355
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4356
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpPreviousGroup(Ljava/lang/String;)Z

    move-result p1

    .line 4357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4358
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4343
    :pswitch_7b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4345
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4346
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpNextGroup(Ljava/lang/String;)Z

    move-result p1

    .line 4347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4348
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4333
    :pswitch_7c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4336
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpAbortMetadataReceiving(Ljava/lang/String;)Z

    move-result p1

    .line 4337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4338
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4321
    :pswitch_7d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4325
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 4326
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpUnregisterEventWatcher(Ljava/lang/String;B)Z

    move-result p1

    .line 4327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4328
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4307
    :pswitch_7e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4311
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 4313
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 4314
    invoke-virtual {p0, p1, p4, v2, v3}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpRegisterEventWatcher(Ljava/lang/String;BJ)Z

    move-result p1

    .line 4315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4316
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4297
    :pswitch_7f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4300
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpGetPlayStatus(Ljava/lang/String;)Z

    move-result p1

    .line 4301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4302
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4287
    :pswitch_80
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4290
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpGetElementAttributesPlaying(Ljava/lang/String;)Z

    move-result p1

    .line 4291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4292
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4273
    :pswitch_81
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4277
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 4279
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 4280
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpSetPlayerSettingValue(Ljava/lang/String;BB)Z

    move-result p1

    .line 4281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4282
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4261
    :pswitch_82
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4265
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 4266
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpGetPlayerSettingCurrentValues(Ljava/lang/String;B)Z

    move-result p1

    .line 4267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4268
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4249
    :pswitch_83
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4253
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 4254
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpGetPlayerSettingValuesList(Ljava/lang/String;B)Z

    move-result p1

    .line 4255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4256
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4239
    :pswitch_84
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4242
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpGetPlayerSettingAttributesList(Ljava/lang/String;)Z

    move-result p1

    .line 4243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4244
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4229
    :pswitch_85
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4232
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpGetCapabilitiesSupportEvent(Ljava/lang/String;)Z

    move-result p1

    .line 4233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4234
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4219
    :pswitch_86
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4222
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpStopRewind(Ljava/lang/String;)Z

    move-result p1

    .line 4223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4224
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4209
    :pswitch_87
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4212
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpStartRewind(Ljava/lang/String;)Z

    move-result p1

    .line 4213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4214
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4199
    :pswitch_88
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4202
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpStopFastForward(Ljava/lang/String;)Z

    move-result p1

    .line 4203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4204
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4189
    :pswitch_89
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4192
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpStartFastForward(Ljava/lang/String;)Z

    move-result p1

    .line 4193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4194
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4179
    :pswitch_8a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4182
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpVolumeDown(Ljava/lang/String;)Z

    move-result p1

    .line 4183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4184
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4169
    :pswitch_8b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4172
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpVolumeUp(Ljava/lang/String;)Z

    move-result p1

    .line 4173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4174
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4159
    :pswitch_8c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4162
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpBackward(Ljava/lang/String;)Z

    move-result p1

    .line 4163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4149
    :pswitch_8d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4152
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpForward(Ljava/lang/String;)Z

    move-result p1

    .line 4153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4139
    :pswitch_8e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4142
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpPause(Ljava/lang/String;)Z

    move-result p1

    .line 4143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4129
    :pswitch_8f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4132
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpStop(Ljava/lang/String;)Z

    move-result p1

    .line 4133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4134
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4119
    :pswitch_90
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4122
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqAvrcpPlay(Ljava/lang/String;)Z

    move-result p1

    .line 4123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4124
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4109
    :pswitch_91
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4112
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isAvrcp14Supported(Ljava/lang/String;)Z

    move-result p1

    .line 4113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4099
    :pswitch_92
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4102
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isAvrcp13Supported(Ljava/lang/String;)Z

    move-result p1

    .line 4103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4104
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4091
    :pswitch_93
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4092
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getAvrcpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p1

    .line 4093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4094
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 4081
    :pswitch_94
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4083
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    .line 4084
    :cond_6
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setA2dpLocalMute(Z)Z

    move-result p1

    .line 4085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4086
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4071
    :pswitch_95
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4073
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4074
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setA2dpLocalVolume(I)Z

    move-result p1

    .line 4075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4076
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4063
    :pswitch_96
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4064
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getAvrcpCurrentState()I

    move-result p1

    .line 4065
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4066
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4055
    :pswitch_97
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4056
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getA2dpCurrentState()I

    move-result p1

    .line 4057
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4058
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4047
    :pswitch_98
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4048
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getA2dpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p1

    .line 4049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4050
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 4037
    :pswitch_99
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4039
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4040
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqA2dpDisconnect(Ljava/lang/String;)Z

    move-result p1

    .line 4041
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4042
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4027
    :pswitch_9a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4029
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4030
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqA2dpConnect(Ljava/lang/String;)Z

    move-result p1

    .line 4031
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4032
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4017
    :pswitch_9b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4019
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object p1

    .line 4020
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->unregisterA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/UiA2dpCallback;)Z

    move-result p1

    .line 4021
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4022
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4007
    :pswitch_9c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4009
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object p1

    .line 4010
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->registerA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/UiA2dpCallback;)Z

    move-result p1

    .line 4011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4012
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3997
    :pswitch_9d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3999
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4000
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getMapRegisterState(Ljava/lang/String;)I

    move-result p1

    .line 4001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4002
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3987
    :pswitch_9e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3989
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3990
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getMapCurrentState(Ljava/lang/String;)I

    move-result p1

    .line 3991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3992
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3980
    :pswitch_9f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3981
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqMapCleanDatabase()V

    .line 3982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3971
    :pswitch_a0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3973
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3974
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqMapDeleteDatabaseByAddress(Ljava/lang/String;)V

    .line 3975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3962
    :pswitch_a1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3964
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3965
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqMapDatabaseAvailable(Ljava/lang/String;)V

    .line 3966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3952
    :pswitch_a2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3954
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3955
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqMapDownloadInterrupt(Ljava/lang/String;)Z

    move-result p1

    .line 3956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3957
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3942
    :pswitch_a3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3944
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3945
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isMapNotificationRegistered(Ljava/lang/String;)Z

    move-result p1

    .line 3946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3947
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3933
    :pswitch_a4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3935
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3936
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqMapUnregisterNotification(Ljava/lang/String;)V

    .line 3937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3921
    :pswitch_a5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3923
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_7

    move v0, v1

    .line 3926
    :cond_7
    invoke-virtual {p0, p1, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqMapRegisterNotification(Ljava/lang/String;Z)Z

    move-result p1

    .line 3927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3928
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3907
    :pswitch_a6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3909
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3911
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3913
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 3914
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqMapDownloadSingleMessage(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    .line 3915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3916
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3891
    :pswitch_a7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3893
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3895
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3897
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3899
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_8

    move v0, v1

    .line 3900
    :cond_8
    invoke-virtual {p0, p1, p4, v2, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqMapDownloadAllMessages(Ljava/lang/String;IIZ)Z

    move-result p1

    .line 3901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3902
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3881
    :pswitch_a8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3883
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiMapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiMapCallback;

    move-result-object p1

    .line 3884
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->unregisterMapCallback(Lnfore/android/bt/servicemanager/UiMapCallback;)Z

    move-result p1

    .line 3885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3886
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3871
    :pswitch_a9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3873
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiMapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiMapCallback;

    move-result-object p1

    .line 3874
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->registerMapCallback(Lnfore/android/bt/servicemanager/UiMapCallback;)Z

    move-result p1

    .line 3875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3876
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3861
    :pswitch_aa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3863
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3864
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getPbapCurrentState(Ljava/lang/String;)I

    move-result p1

    .line 3865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3866
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3851
    :pswitch_ab
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3853
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3854
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqPbapDownloadInterrupt(Ljava/lang/String;)Z

    move-result p1

    .line 3855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3856
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3844
    :pswitch_ac
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3845
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqPbapCleanDatabase()V

    .line 3846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3835
    :pswitch_ad
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3837
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3838
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqPbapDeleteDatabaseByAddress(Ljava/lang/String;)V

    .line 3839
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3824
    :pswitch_ae
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3826
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3828
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 3829
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqPbapQueryName(Ljava/lang/String;Ljava/lang/String;)V

    .line 3830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3815
    :pswitch_af
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3817
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3818
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqPbapDatabaseAvailable(Ljava/lang/String;)V

    .line 3819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3805
    :pswitch_b0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3807
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3808
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqCancelPbapDownload(Ljava/lang/String;)Z

    move-result p1

    .line 3809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3810
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3789
    :pswitch_b1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3791
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3793
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_9

    move v0, v1

    .line 3798
    :cond_9
    invoke-virtual {p0, p1, p4, v2, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z

    move-result p1

    .line 3799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3800
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3779
    :pswitch_b2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3781
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiPbapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiPbapCallback;

    move-result-object p1

    .line 3782
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->unregisterPbapCallback(Lnfore/android/bt/servicemanager/UiPbapCallback;)Z

    move-result p1

    .line 3783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3784
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3769
    :pswitch_b3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3771
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiPbapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiPbapCallback;

    move-result-object p1

    .line 3772
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->registerPbapCallback(Lnfore/android/bt/servicemanager/UiPbapCallback;)Z

    move-result p1

    .line 3773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3774
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3758
    :pswitch_b4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3760
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3762
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 3763
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqSppSendData(Ljava/lang/String;[B)V

    .line 3764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3748
    :pswitch_b5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3750
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3751
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isSppConnected(Ljava/lang/String;)Z

    move-result p1

    .line 3752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3753
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3741
    :pswitch_b6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3742
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqSppConnectedDeviceAddressList()V

    .line 3743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3731
    :pswitch_b7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3733
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3734
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqSppDisconnect(Ljava/lang/String;)Z

    move-result p1

    .line 3735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3736
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3721
    :pswitch_b8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3723
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3724
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqSppConnect(Ljava/lang/String;)Z

    move-result p1

    .line 3725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3726
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3711
    :pswitch_b9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3713
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiSppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiSppCallback;

    move-result-object p1

    .line 3714
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->unregisterSppCallback(Lnfore/android/bt/servicemanager/UiSppCallback;)Z

    move-result p1

    .line 3715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3716
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3701
    :pswitch_ba
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3703
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiSppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiSppCallback;

    move-result-object p1

    .line 3704
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->registerSppCallback(Lnfore/android/bt/servicemanager/UiSppCallback;)Z

    move-result p1

    .line 3705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3706
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3687
    :pswitch_bb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3689
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3691
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 3693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 3694
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHspRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z

    move-result p1

    .line 3695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3696
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3675
    :pswitch_bc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3677
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3679
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 3680
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHspAudioTransfer(Ljava/lang/String;B)Z

    move-result p1

    .line 3681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3682
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3665
    :pswitch_bd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3667
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3668
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHspTerminateOngoingCall(Ljava/lang/String;)Z

    move-result p1

    .line 3669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3670
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3655
    :pswitch_be
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3657
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3658
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHspRejectIncomingCall(Ljava/lang/String;)Z

    move-result p1

    .line 3659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3660
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3645
    :pswitch_bf
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3647
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3648
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHspAnswerCall(Ljava/lang/String;)Z

    move-result p1

    .line 3649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3650
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3635
    :pswitch_c0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3637
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3638
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHspReDial(Ljava/lang/String;)Z

    move-result p1

    .line 3639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3640
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3625
    :pswitch_c1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3627
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3628
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHspCurrentScoState(Ljava/lang/String;)I

    move-result p1

    .line 3629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3630
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3615
    :pswitch_c2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3617
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3618
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHspCurrentState(Ljava/lang/String;)I

    move-result p1

    .line 3619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3620
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3607
    :pswitch_c3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3608
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHspConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p1

    .line 3609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3610
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3597
    :pswitch_c4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3599
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3600
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHspDisconnect(Ljava/lang/String;)Z

    move-result p1

    .line 3601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3602
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3587
    :pswitch_c5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3589
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3590
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHspConnect(Ljava/lang/String;)Z

    move-result p1

    .line 3591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3592
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3577
    :pswitch_c6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3579
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiHspCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiHspCallback;

    move-result-object p1

    .line 3580
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->unregisterHspCallback(Lnfore/android/bt/servicemanager/UiHspCallback;)Z

    move-result p1

    .line 3581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3582
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3567
    :pswitch_c7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiHspCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiHspCallback;

    move-result-object p1

    .line 3570
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->registerHspCallback(Lnfore/android/bt/servicemanager/UiHspCallback;)Z

    move-result p1

    .line 3571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3572
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3555
    :pswitch_c8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_a

    move v0, v1

    .line 3560
    :cond_a
    invoke-virtual {p0, p1, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpVoiceDial(Ljava/lang/String;Z)Z

    move-result p1

    .line 3561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3562
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3541
    :pswitch_c9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3543
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3545
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 3547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 3548
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z

    move-result p1

    .line 3549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3550
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3531
    :pswitch_ca
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3533
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3534
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpAtDownloadSMS(Ljava/lang/String;)Z

    move-result p1

    .line 3535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3536
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3519
    :pswitch_cb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 3524
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpAtDownloadPhonebook(Ljava/lang/String;I)Z

    move-result p1

    .line 3525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3526
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3508
    :pswitch_cc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3510
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_b

    move v0, v1

    .line 3513
    :cond_b
    invoke-virtual {p0, p1, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setHfpAtNewSmsNotify(Ljava/lang/String;Z)V

    .line 3514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3498
    :pswitch_cd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3500
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3501
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHfpRemoteDeviceSignalStatus(Ljava/lang/String;)I

    move-result p1

    .line 3502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3503
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3488
    :pswitch_ce
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3491
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHfpRemoteDeviceBatteryStatus(Ljava/lang/String;)I

    move-result p1

    .line 3492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3493
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3478
    :pswitch_cf
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3480
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3481
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isHfpRemoteDeviceOnRoaming(Ljava/lang/String;)Z

    move-result p1

    .line 3482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3483
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3468
    :pswitch_d0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3471
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isHfpRemoteDeviceTelecomServiceOn(Ljava/lang/String;)Z

    move-result p1

    .line 3472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3473
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3458
    :pswitch_d1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3460
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3461
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;)Z

    move-result p1

    .line 3462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3463
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3448
    :pswitch_d2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3450
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3451
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpRemoteDeviceNetworkOperator(Ljava/lang/String;)Z

    move-result p1

    .line 3452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3453
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3438
    :pswitch_d3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3441
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpRemoteDevicePhoneNumber(Ljava/lang/String;)Z

    move-result p1

    .line 3442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3443
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3428
    :pswitch_d4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3431
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHfpRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3419
    :pswitch_d5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3422
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpRemoteDeviceInfo(Ljava/lang/String;)V

    .line 3423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3410
    :pswitch_d6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    move v0, v1

    .line 3413
    :cond_c
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setHfpLocalRingEnable(Z)V

    .line 3414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3398
    :pswitch_d7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3400
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3402
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 3403
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpAudioTransfer(Ljava/lang/String;B)Z

    move-result p1

    .line 3404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3405
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3386
    :pswitch_d8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3390
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 3391
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpSendDtmf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 3392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3393
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3374
    :pswitch_d9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3376
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3378
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 3379
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpMultiCallControl(Ljava/lang/String;B)Z

    move-result p1

    .line 3380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3381
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3364
    :pswitch_da
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3366
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3367
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpTerminateOngoingCall(Ljava/lang/String;)Z

    move-result p1

    .line 3368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3369
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3354
    :pswitch_db
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3356
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3357
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpRejectIncomingCall(Ljava/lang/String;)Z

    move-result p1

    .line 3358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3359
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3344
    :pswitch_dc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3346
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3347
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpAnswerCall(Ljava/lang/String;)Z

    move-result p1

    .line 3348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3349
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3332
    :pswitch_dd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 3337
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpMemoryDial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 3338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3339
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3322
    :pswitch_de
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3324
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3325
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpReDial(Ljava/lang/String;)Z

    move-result p1

    .line 3326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3327
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3310
    :pswitch_df
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 3315
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 3316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3317
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3300
    :pswitch_e0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3303
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isHfpVoiceControlOn(Ljava/lang/String;)Z

    move-result p1

    .line 3304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3305
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3290
    :pswitch_e1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3293
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHfpCurrentScoState(Ljava/lang/String;)I

    move-result p1

    .line 3294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3295
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3280
    :pswitch_e2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3283
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHfpCurrentState(Ljava/lang/String;)I

    move-result p1

    .line 3284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3285
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3272
    :pswitch_e3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3273
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p1

    .line 3274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3275
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3262
    :pswitch_e4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3264
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3265
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpDisconnect(Ljava/lang/String;)Z

    move-result p1

    .line 3266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3267
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3252
    :pswitch_e5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3255
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqHfpConnect(Ljava/lang/String;)Z

    move-result p1

    .line 3256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3257
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3242
    :pswitch_e6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3244
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiHfpCallback;

    move-result-object p1

    .line 3245
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->unregisterHfpCallback(Lnfore/android/bt/servicemanager/UiHfpCallback;)Z

    move-result p1

    .line 3246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3247
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3232
    :pswitch_e7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3234
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiHfpCallback;

    move-result-object p1

    .line 3235
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->registerHfpCallback(Lnfore/android/bt/servicemanager/UiHfpCallback;)Z

    move-result p1

    .line 3236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3237
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3222
    :pswitch_e8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3225
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqBluetoothRemoteUuids(Ljava/lang/String;)I

    move-result p1

    .line 3226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3227
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3212
    :pswitch_e9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3215
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqDisconnectAll(Ljava/lang/String;)I

    move-result p1

    .line 3216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3217
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3204
    :pswitch_ea
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3205
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqBluetoothDisconnectAll()I

    move-result p1

    .line 3206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3194
    :pswitch_eb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3197
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqBluetoothConnectAll(Ljava/lang/String;)I

    move-result p1

    .line 3198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3186
    :pswitch_ec
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3187
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isBluetoothAutoReconnectEnable()Z

    move-result p1

    .line 3188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3189
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3177
    :pswitch_ed
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    move v0, v1

    .line 3180
    :cond_d
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setBluetoothAutoReconnectForceOor(Z)V

    .line 3181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3168
    :pswitch_ee
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    move v0, v1

    .line 3171
    :cond_e
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setBluetoothAutoReconnect(Z)V

    .line 3172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3160
    :pswitch_ef
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3161
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isBluetoothDiscoverable()Z

    move-result p1

    .line 3162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3163
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3152
    :pswitch_f0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3153
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isBluetoothScanning()Z

    move-result p1

    .line 3154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3155
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3144
    :pswitch_f1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getBluetoothCurrentState()I

    move-result p1

    .line 3146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3147
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3136
    :pswitch_f2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3137
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->isBluetoothEnable()Z

    move-result p1

    .line 3138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3139
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3126
    :pswitch_f3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3129
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setBluetoothLocalAdapterName(Ljava/lang/String;)Z

    move-result p1

    .line 3130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3131
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3118
    :pswitch_f4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3119
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getBluetoothLocalAdapterAddress()Ljava/lang/String;

    move-result-object p1

    .line 3120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3121
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3108
    :pswitch_f5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3111
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3113
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3100
    :pswitch_f6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3101
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object p1

    .line 3102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3092
    :pswitch_f7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3093
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqBluetoothPairedDevicesExtend()Z

    move-result p1

    .line 3094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3095
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3084
    :pswitch_f8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqBluetoothPairedDevices()Z

    move-result p1

    .line 3086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3087
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3076
    :pswitch_f9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3077
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqBluetoothUnpairAllNextTime()Z

    move-result p1

    .line 3078
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3079
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3068
    :pswitch_fa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3069
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqBluetoothUnpairAll()Z

    move-result p1

    .line 3070
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3071
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3058
    :pswitch_fb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3060
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3061
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqBluetoothUnpair(Ljava/lang/String;)Z

    move-result p1

    .line 3062
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3063
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3048
    :pswitch_fc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3050
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3051
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqBluetoothPair(Ljava/lang/String;)Z

    move-result p1

    .line 3052
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3053
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3038
    :pswitch_fd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3040
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    move v0, v1

    .line 3041
    :cond_f
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->reqBluetoothScanning(Z)Z

    move-result p1

    .line 3042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3043
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3028
    :pswitch_fe
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3030
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    move v0, v1

    .line 3031
    :cond_10
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setBluetoothDiscoverablePermanent(Z)Z

    move-result p1

    .line 3032
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3033
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3018
    :pswitch_ff
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3020
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3021
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setBluetoothDiscoverableDuration(I)Z

    move-result p1

    .line 3022
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3023
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3008
    :pswitch_100
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3010
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11

    move v0, v1

    .line 3011
    :cond_11
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->setBluetoothEnable(Z)Z

    move-result p1

    .line 3012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3013
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2998
    :pswitch_101
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3000
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object p1

    .line 3001
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->unregisterNforeServiceCallback(Lnfore/android/bt/servicemanager/UiServiceCallback;)Z

    move-result p1

    .line 3002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3003
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2988
    :pswitch_102
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2990
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object p1

    .line 2991
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->registerNforeServiceCallback(Lnfore/android/bt/servicemanager/UiServiceCallback;)Z

    move-result p1

    .line 2992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2993
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2983
    :cond_12
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
