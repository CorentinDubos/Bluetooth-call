.class public abstract Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;
.super Landroid/os/Binder;
.source "INfServiceCommand.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/INfServiceCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/INfServiceCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.INfServiceCommand"

.field static final TRANSACTION_getA2dpConnectedDeviceAddress:I = 0x68

.field static final TRANSACTION_getA2dpCurrentState:I = 0x69

.field static final TRANSACTION_getAvrcpConnectedDeviceAddress:I = 0x6d

.field static final TRANSACTION_getAvrcpCurrentState:I = 0x6a

.field static final TRANSACTION_getBluetoothCurrentState:I = 0x11

.field static final TRANSACTION_getBluetoothLocalAdapterAddress:I = 0xe

.field static final TRANSACTION_getBluetoothLocalAdapterName:I = 0xc

.field static final TRANSACTION_getBluetoothRemoteDeviceName:I = 0xd

.field static final TRANSACTION_getHfpConnectedDeviceAddress:I = 0x1e

.field static final TRANSACTION_getHfpCurrentScoState:I = 0x20

.field static final TRANSACTION_getHfpCurrentState:I = 0x1f

.field static final TRANSACTION_getHfpRemoteDeviceBatteryStatus:I = 0x33

.field static final TRANSACTION_getHfpRemoteDeviceName:I = 0x2d

.field static final TRANSACTION_getHfpRemoteDeviceSignalStatus:I = 0x34

.field static final TRANSACTION_getHidCurrentState:I = 0xa5

.field static final TRANSACTION_getHspConnectedDeviceAddress:I = 0x3e

.field static final TRANSACTION_getHspCurrentScoState:I = 0x40

.field static final TRANSACTION_getHspCurrentState:I = 0x3f

.field static final TRANSACTION_getMapCurrentState:I = 0x62

.field static final TRANSACTION_getMapRegisterState:I = 0x63

.field static final TRANSACTION_getPanConnectedDeviceAddress:I = 0x9d

.field static final TRANSACTION_getPanCurrentState:I = 0x9e

.field static final TRANSACTION_getPbapCurrentState:I = 0x56

.field static final TRANSACTION_isA2dpNativeRunning:I = 0x98

.field static final TRANSACTION_isAvrcp13Supported:I = 0x6e

.field static final TRANSACTION_isAvrcp14Supported:I = 0x6f

.field static final TRANSACTION_isAvrcpBrowsingChannelEstablished:I = 0x94

.field static final TRANSACTION_isBluetoothAutoReconnectEnable:I = 0x16

.field static final TRANSACTION_isBluetoothDiscoverable:I = 0x13

.field static final TRANSACTION_isBluetoothEnable:I = 0x10

.field static final TRANSACTION_isBluetoothScanning:I = 0x12

.field static final TRANSACTION_isHfpRemoteDeviceOnRoaming:I = 0x32

.field static final TRANSACTION_isHfpRemoteDeviceTelecomServiceOn:I = 0x31

.field static final TRANSACTION_isHfpVoiceControlOn:I = 0x21

.field static final TRANSACTION_isMapNotificationRegistered:I = 0x5d

.field static final TRANSACTION_isSppConnected:I = 0x4c

.field static final TRANSACTION_registerA2dpAvrcpCallback:I = 0x64

.field static final TRANSACTION_registerHfpCallback:I = 0x1a

.field static final TRANSACTION_registerHidCallback:I = 0x9f

.field static final TRANSACTION_registerHspCallback:I = 0x3a

.field static final TRANSACTION_registerMapCallback:I = 0x57

.field static final TRANSACTION_registerNforeServiceCallback:I = 0x1

.field static final TRANSACTION_registerPanCallback:I = 0x99

.field static final TRANSACTION_registerPbapCallback:I = 0x4e

.field static final TRANSACTION_registerSppCallback:I = 0x47

.field static final TRANSACTION_reqA2dpConnect:I = 0x66

.field static final TRANSACTION_reqA2dpDisconnect:I = 0x67

.field static final TRANSACTION_reqAvrcpAbortMetadataReceiving:I = 0x84

.field static final TRANSACTION_reqAvrcpAddToNowPlaying:I = 0x93

.field static final TRANSACTION_reqAvrcpBackward:I = 0x74

.field static final TRANSACTION_reqAvrcpChangePath:I = 0x8f

.field static final TRANSACTION_reqAvrcpForward:I = 0x73

.field static final TRANSACTION_reqAvrcpGetCapabilitiesSupportEvent:I = 0x7b

.field static final TRANSACTION_reqAvrcpGetElementAttributesPlaying:I = 0x80

.field static final TRANSACTION_reqAvrcpGetFolderItems:I = 0x8e

.field static final TRANSACTION_reqAvrcpGetItemAttributes:I = 0x90

.field static final TRANSACTION_reqAvrcpGetPlayStatus:I = 0x81

.field static final TRANSACTION_reqAvrcpGetPlayerSettingAttributeText:I = 0x88

.field static final TRANSACTION_reqAvrcpGetPlayerSettingAttributesList:I = 0x7c

.field static final TRANSACTION_reqAvrcpGetPlayerSettingCurrentValues:I = 0x7e

.field static final TRANSACTION_reqAvrcpGetPlayerSettingValueText:I = 0x89

.field static final TRANSACTION_reqAvrcpGetPlayerSettingValuesList:I = 0x7d

.field static final TRANSACTION_reqAvrcpInformBatteryStatusOfCt:I = 0x8b

.field static final TRANSACTION_reqAvrcpInformDisplayableCharset:I = 0x8a

.field static final TRANSACTION_reqAvrcpNextGroup:I = 0x85

.field static final TRANSACTION_reqAvrcpPause:I = 0x72

.field static final TRANSACTION_reqAvrcpPlay:I = 0x70

.field static final TRANSACTION_reqAvrcpPlaySelectedItem:I = 0x91

.field static final TRANSACTION_reqAvrcpPreviousGroup:I = 0x86

.field static final TRANSACTION_reqAvrcpRegisterEventWatcher:I = 0x82

.field static final TRANSACTION_reqAvrcpSearch:I = 0x92

.field static final TRANSACTION_reqAvrcpSetAbsoluteVolume:I = 0x95

.field static final TRANSACTION_reqAvrcpSetAddressedPlayer:I = 0x8c

.field static final TRANSACTION_reqAvrcpSetBrowsedPlayer:I = 0x8d

.field static final TRANSACTION_reqAvrcpSetMetadataCompanyId:I = 0x87

.field static final TRANSACTION_reqAvrcpSetPlayerSettingValue:I = 0x7f

.field static final TRANSACTION_reqAvrcpStartFastForward:I = 0x77

.field static final TRANSACTION_reqAvrcpStartRewind:I = 0x79

.field static final TRANSACTION_reqAvrcpStop:I = 0x71

.field static final TRANSACTION_reqAvrcpStopFastForward:I = 0x78

.field static final TRANSACTION_reqAvrcpStopRewind:I = 0x7a

.field static final TRANSACTION_reqAvrcpUnregisterEventWatcher:I = 0x83

.field static final TRANSACTION_reqAvrcpVolumeDown:I = 0x76

.field static final TRANSACTION_reqAvrcpVolumeUp:I = 0x75

.field static final TRANSACTION_reqBluetoothConnectAll:I = 0x17

.field static final TRANSACTION_reqBluetoothDisconnectAll:I = 0x18

.field static final TRANSACTION_reqBluetoothPair:I = 0x7

.field static final TRANSACTION_reqBluetoothPairedDevices:I = 0xb

.field static final TRANSACTION_reqBluetoothRemoteUuids:I = 0x19

.field static final TRANSACTION_reqBluetoothScanning:I = 0x6

.field static final TRANSACTION_reqBluetoothUnpair:I = 0x8

.field static final TRANSACTION_reqBluetoothUnpairAll:I = 0x9

.field static final TRANSACTION_reqBluetoothUnpairAllNextTime:I = 0xa

.field static final TRANSACTION_reqHfpAnswerCall:I = 0x25

.field static final TRANSACTION_reqHfpAtDownloadPhonebook:I = 0x36

.field static final TRANSACTION_reqHfpAtDownloadSMS:I = 0x37

.field static final TRANSACTION_reqHfpAudioTransfer:I = 0x2a

.field static final TRANSACTION_reqHfpConnect:I = 0x1c

.field static final TRANSACTION_reqHfpDialCall:I = 0x22

.field static final TRANSACTION_reqHfpDisconnect:I = 0x1d

.field static final TRANSACTION_reqHfpMemoryDial:I = 0x24

.field static final TRANSACTION_reqHfpMultiCallControl:I = 0x28

.field static final TRANSACTION_reqHfpReDial:I = 0x23

.field static final TRANSACTION_reqHfpRejectIncomingCall:I = 0x26

.field static final TRANSACTION_reqHfpRemoteDeviceInfo:I = 0x2c

.field static final TRANSACTION_reqHfpRemoteDeviceNetworkOperator:I = 0x2f

.field static final TRANSACTION_reqHfpRemoteDevicePhoneNumber:I = 0x2e

.field static final TRANSACTION_reqHfpRemoteDeviceSubscriberNumber:I = 0x30

.field static final TRANSACTION_reqHfpRemoteDeviceVolumeSync:I = 0x38

.field static final TRANSACTION_reqHfpSendDtmf:I = 0x29

.field static final TRANSACTION_reqHfpTerminateOngoingCall:I = 0x27

.field static final TRANSACTION_reqHfpVoiceDial:I = 0x39

.field static final TRANSACTION_reqHidConnect:I = 0xa1

.field static final TRANSACTION_reqHidDisconnect:I = 0xa2

.field static final TRANSACTION_reqHspAnswerCall:I = 0x42

.field static final TRANSACTION_reqHspAudioTransfer:I = 0x45

.field static final TRANSACTION_reqHspConnect:I = 0x3c

.field static final TRANSACTION_reqHspDisconnect:I = 0x3d

.field static final TRANSACTION_reqHspReDial:I = 0x41

.field static final TRANSACTION_reqHspRejectIncomingCall:I = 0x43

.field static final TRANSACTION_reqHspRemoteDeviceVolumeSync:I = 0x46

.field static final TRANSACTION_reqHspTerminateOngoingCall:I = 0x44

.field static final TRANSACTION_reqMapCleanDatabase:I = 0x61

.field static final TRANSACTION_reqMapDatabaseAvailable:I = 0x5f

.field static final TRANSACTION_reqMapDeleteDatabaseByAddress:I = 0x60

.field static final TRANSACTION_reqMapDownloadAllMessages:I = 0x59

.field static final TRANSACTION_reqMapDownloadInterrupt:I = 0x5e

.field static final TRANSACTION_reqMapDownloadSingleMessage:I = 0x5a

.field static final TRANSACTION_reqMapRegisterNotification:I = 0x5b

.field static final TRANSACTION_reqMapUnregisterNotification:I = 0x5c

.field static final TRANSACTION_reqPanConnect:I = 0x9b

.field static final TRANSACTION_reqPanDisconnect:I = 0x9c

.field static final TRANSACTION_reqPbapCleanDatabase:I = 0x54

.field static final TRANSACTION_reqPbapDatabaseAvailable:I = 0x51

.field static final TRANSACTION_reqPbapDeleteDatabaseByAddress:I = 0x53

.field static final TRANSACTION_reqPbapDownloadAllVcards:I = 0x50

.field static final TRANSACTION_reqPbapDownloadInterrupt:I = 0x55

.field static final TRANSACTION_reqPbapQueryName:I = 0x52

.field static final TRANSACTION_reqSppConnect:I = 0x49

.field static final TRANSACTION_reqSppConnectedDeviceAddressList:I = 0x4b

.field static final TRANSACTION_reqSppDisconnect:I = 0x4a

.field static final TRANSACTION_reqSppSendData:I = 0x4d

.field static final TRANSACTION_sendHidMouseCommand:I = 0xa3

.field static final TRANSACTION_sendHidVirtualKeyCommand:I = 0xa4

.field static final TRANSACTION_setA2dpLocalMute:I = 0x6c

.field static final TRANSACTION_setA2dpLocalVolume:I = 0x6b

.field static final TRANSACTION_setA2dpNativeStart:I = 0x96

.field static final TRANSACTION_setA2dpNativeStop:I = 0x97

.field static final TRANSACTION_setBluetoothAutoReconnect:I = 0x14

.field static final TRANSACTION_setBluetoothAutoReconnectForceOor:I = 0x15

.field static final TRANSACTION_setBluetoothDiscoverableDuration:I = 0x4

.field static final TRANSACTION_setBluetoothDiscoverablePermanent:I = 0x5

.field static final TRANSACTION_setBluetoothEnable:I = 0x3

.field static final TRANSACTION_setBluetoothLocalAdapterName:I = 0xf

.field static final TRANSACTION_setHfpAtNewSmsNotify:I = 0x35

.field static final TRANSACTION_setHfpLocalRingEnable:I = 0x2b

.field static final TRANSACTION_unregisterA2dpAvrcpCallback:I = 0x65

.field static final TRANSACTION_unregisterHfpCallback:I = 0x1b

.field static final TRANSACTION_unregisterHidCallback:I = 0xa0

.field static final TRANSACTION_unregisterHspCallback:I = 0x3b

.field static final TRANSACTION_unregisterMapCallback:I = 0x58

.field static final TRANSACTION_unregisterNforeServiceCallback:I = 0x2

.field static final TRANSACTION_unregisterPanCallback:I = 0x9a

.field static final TRANSACTION_unregisterPbapCallback:I = 0x4f

.field static final TRANSACTION_unregisterSppCallback:I = 0x48


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2528
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 2529
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/INfServiceCommand;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 2540
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2541
    instance-of v1, v0, Lnfore/android/bt/servicemanager/INfServiceCommand;

    if-eqz v1, :cond_1

    .line 2542
    check-cast v0, Lnfore/android/bt/servicemanager/INfServiceCommand;

    return-object v0

    .line 2544
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;
    .locals 1

    .line 9767
    sget-object v0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/INfServiceCommand;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/INfServiceCommand;)Z
    .locals 1

    .line 9760
    sget-object v0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/INfServiceCommand;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 9761
    sput-object p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/INfServiceCommand;

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

    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    if-eq p1, v0, :cond_c

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4259
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 4251
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4252
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getHidCurrentState()I

    move-result p1

    .line 4253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4254
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4239
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 4244
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->sendHidVirtualKeyCommand(II)I

    move-result p1

    .line 4245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4246
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4223
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 4229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 4232
    invoke-virtual {p0, p1, p4, v0, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->sendHidMouseCommand(IIII)I

    move-result p1

    .line 4233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4234
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4213
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4216
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHidDisconnect(Ljava/lang/String;)Z

    move-result p1

    .line 4217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4218
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4203
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4206
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHidConnect(Ljava/lang/String;)Z

    move-result p1

    .line 4207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4208
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4193
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4195
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IHidCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IHidCallback;

    move-result-object p1

    .line 4196
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->unregisterHidCallback(Lnfore/android/bt/servicemanager/IHidCallback;)Z

    move-result p1

    .line 4197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4198
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4183
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IHidCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IHidCallback;

    move-result-object p1

    .line 4186
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->registerHidCallback(Lnfore/android/bt/servicemanager/IHidCallback;)Z

    move-result p1

    .line 4187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4188
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4175
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4176
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getPanCurrentState()I

    move-result p1

    .line 4177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4178
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4167
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4168
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getPanConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p1

    .line 4169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4170
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 4157
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4160
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqPanDisconnect(Ljava/lang/String;)Z

    move-result p1

    .line 4161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4162
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4147
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4150
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqPanConnect(Ljava/lang/String;)Z

    move-result p1

    .line 4151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4152
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4137
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IPanCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IPanCallback;

    move-result-object p1

    .line 4140
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->unregisterPanCallback(Lnfore/android/bt/servicemanager/IPanCallback;)Z

    move-result p1

    .line 4141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4142
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4127
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IPanCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IPanCallback;

    move-result-object p1

    .line 4130
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->registerPanCallback(Lnfore/android/bt/servicemanager/IPanCallback;)Z

    move-result p1

    .line 4131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4132
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4119
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4120
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isA2dpNativeRunning()Z

    move-result p1

    .line 4121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4112
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4113
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->setA2dpNativeStop()V

    .line 4114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4105
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4106
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->setA2dpNativeStart()V

    .line 4107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4093
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4095
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4097
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 4098
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpSetAbsoluteVolume(Ljava/lang/String;B)Z

    move-result p1

    .line 4099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4083
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4085
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4086
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isAvrcpBrowsingChannelEstablished(Ljava/lang/String;)Z

    move-result p1

    .line 4087
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4088
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4067
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4069
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4071
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 4073
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4075
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    .line 4076
    invoke-virtual/range {v2 .. v7}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpAddToNowPlaying(Ljava/lang/String;BIJ)Z

    move-result p1

    .line 4077
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4078
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4055
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4057
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4059
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 4060
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpSearch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 4061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4062
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4039
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4041
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4043
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 4045
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4047
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    .line 4048
    invoke-virtual/range {v2 .. v7}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpPlaySelectedItem(Ljava/lang/String;BIJ)Z

    move-result p1

    .line 4049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4050
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4023
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4025
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4027
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 4029
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4031
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    .line 4032
    invoke-virtual/range {v2 .. v7}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpGetItemAttributes(Ljava/lang/String;BIJ)Z

    move-result p1

    .line 4033
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4034
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4007
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4009
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4011
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4013
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 4015
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    move-object v2, p0

    .line 4016
    invoke-virtual/range {v2 .. v7}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpChangePath(Ljava/lang/String;IJB)Z

    move-result p1

    .line 4017
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4018
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3995
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3997
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3999
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 4000
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpGetFolderItems(Ljava/lang/String;B)Z

    move-result p1

    .line 4001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4002
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3983
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3985
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3987
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 3988
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpSetBrowsedPlayer(Ljava/lang/String;I)Z

    move-result p1

    .line 3989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3990
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3971
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3973
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3975
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 3976
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpSetAddressedPlayer(Ljava/lang/String;I)Z

    move-result p1

    .line 3977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3978
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3959
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3961
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3963
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 3964
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpInformBatteryStatusOfCt(Ljava/lang/String;B)Z

    move-result p1

    .line 3965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3966
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3947
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3949
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3951
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 3952
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpInformDisplayableCharset(Ljava/lang/String;[I)Z

    move-result p1

    .line 3953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3954
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3933
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3935
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3937
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 3939
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 3940
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpGetPlayerSettingValueText(Ljava/lang/String;BB)Z

    move-result p1

    .line 3941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3942
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3921
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3923
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3925
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 3926
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpGetPlayerSettingAttributeText(Ljava/lang/String;B)Z

    move-result p1

    .line 3927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3928
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3909
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3911
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3913
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 3914
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpSetMetadataCompanyId(Ljava/lang/String;I)Z

    move-result p1

    .line 3915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3916
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3899
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3902
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpPreviousGroup(Ljava/lang/String;)Z

    move-result p1

    .line 3903
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3904
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3889
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3891
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3892
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpNextGroup(Ljava/lang/String;)Z

    move-result p1

    .line 3893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3894
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3879
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3881
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3882
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpAbortMetadataReceiving(Ljava/lang/String;)Z

    move-result p1

    .line 3883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3884
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3867
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3869
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3871
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 3872
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpUnregisterEventWatcher(Ljava/lang/String;B)Z

    move-result p1

    .line 3873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3874
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3853
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3855
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3857
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 3859
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3860
    invoke-virtual {p0, p1, p4, v2, v3}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpRegisterEventWatcher(Ljava/lang/String;BJ)Z

    move-result p1

    .line 3861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3862
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3843
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3845
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3846
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpGetPlayStatus(Ljava/lang/String;)Z

    move-result p1

    .line 3847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3848
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3833
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3835
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3836
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpGetElementAttributesPlaying(Ljava/lang/String;)Z

    move-result p1

    .line 3837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3838
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3819
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3821
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3823
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 3825
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 3826
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpSetPlayerSettingValue(Ljava/lang/String;BB)Z

    move-result p1

    .line 3827
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3828
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3807
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3809
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3811
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 3812
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpGetPlayerSettingCurrentValues(Ljava/lang/String;B)Z

    move-result p1

    .line 3813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3814
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3795
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3797
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3799
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 3800
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpGetPlayerSettingValuesList(Ljava/lang/String;B)Z

    move-result p1

    .line 3801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3802
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3785
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3787
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3788
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpGetPlayerSettingAttributesList(Ljava/lang/String;)Z

    move-result p1

    .line 3789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3790
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3775
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3777
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3778
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpGetCapabilitiesSupportEvent(Ljava/lang/String;)Z

    move-result p1

    .line 3779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3780
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3765
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3767
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3768
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpStopRewind(Ljava/lang/String;)Z

    move-result p1

    .line 3769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3770
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3755
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3757
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3758
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpStartRewind(Ljava/lang/String;)Z

    move-result p1

    .line 3759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3760
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3745
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3747
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3748
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpStopFastForward(Ljava/lang/String;)Z

    move-result p1

    .line 3749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3750
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3735
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3737
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3738
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpStartFastForward(Ljava/lang/String;)Z

    move-result p1

    .line 3739
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3740
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3725
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3727
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3728
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpVolumeDown(Ljava/lang/String;)Z

    move-result p1

    .line 3729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3730
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3715
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3717
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3718
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpVolumeUp(Ljava/lang/String;)Z

    move-result p1

    .line 3719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3720
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3705
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3707
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3708
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpBackward(Ljava/lang/String;)Z

    move-result p1

    .line 3709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3710
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3695
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3697
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3698
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpForward(Ljava/lang/String;)Z

    move-result p1

    .line 3699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3700
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3685
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3687
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3688
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpPause(Ljava/lang/String;)Z

    move-result p1

    .line 3689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3690
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3675
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3677
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3678
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpStop(Ljava/lang/String;)Z

    move-result p1

    .line 3679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3680
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3665
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3667
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3668
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqAvrcpPlay(Ljava/lang/String;)Z

    move-result p1

    .line 3669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3670
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3655
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3657
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3658
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isAvrcp14Supported(Ljava/lang/String;)Z

    move-result p1

    .line 3659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3660
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3645
    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3647
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3648
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isAvrcp13Supported(Ljava/lang/String;)Z

    move-result p1

    .line 3649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3650
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3637
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3638
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getAvrcpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p1

    .line 3639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3640
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3627
    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 3630
    :cond_0
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->setA2dpLocalMute(Z)Z

    move-result p1

    .line 3631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3632
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3617
    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3619
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3620
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->setA2dpLocalVolume(I)Z

    move-result p1

    .line 3621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3622
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3609
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3610
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getAvrcpCurrentState()I

    move-result p1

    .line 3611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3612
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3601
    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3602
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getA2dpCurrentState()I

    move-result p1

    .line 3603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3604
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3593
    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3594
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getA2dpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p1

    .line 3595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3596
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3583
    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3585
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3586
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqA2dpDisconnect(Ljava/lang/String;)Z

    move-result p1

    .line 3587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3588
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3573
    :pswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3575
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3576
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqA2dpConnect(Ljava/lang/String;)Z

    move-result p1

    .line 3577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3578
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3563
    :pswitch_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3565
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object p1

    .line 3566
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->unregisterA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/IA2dpCallback;)Z

    move-result p1

    .line 3567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3568
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3553
    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3555
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object p1

    .line 3556
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->registerA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/IA2dpCallback;)Z

    move-result p1

    .line 3557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3558
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3543
    :pswitch_42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3545
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3546
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getMapRegisterState(Ljava/lang/String;)I

    move-result p1

    .line 3547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3548
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3533
    :pswitch_43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3535
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3536
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getMapCurrentState(Ljava/lang/String;)I

    move-result p1

    .line 3537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3538
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3526
    :pswitch_44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3527
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqMapCleanDatabase()V

    .line 3528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3517
    :pswitch_45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3519
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3520
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqMapDeleteDatabaseByAddress(Ljava/lang/String;)V

    .line 3521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3508
    :pswitch_46
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3510
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3511
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqMapDatabaseAvailable(Ljava/lang/String;)V

    .line 3512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3498
    :pswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3500
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3501
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqMapDownloadInterrupt(Ljava/lang/String;)Z

    move-result p1

    .line 3502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3503
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3488
    :pswitch_48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3491
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isMapNotificationRegistered(Ljava/lang/String;)Z

    move-result p1

    .line 3492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3493
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3479
    :pswitch_49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3481
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3482
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqMapUnregisterNotification(Ljava/lang/String;)V

    .line 3483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3467
    :pswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3469
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    .line 3472
    :cond_1
    invoke-virtual {p0, p1, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqMapRegisterNotification(Ljava/lang/String;Z)Z

    move-result p1

    .line 3473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3474
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3453
    :pswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 3460
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqMapDownloadSingleMessage(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    .line 3461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3462
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3437
    :pswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3439
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v0, v1

    .line 3446
    :cond_2
    invoke-virtual {p0, p1, p4, v2, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqMapDownloadAllMessages(Ljava/lang/String;IIZ)Z

    move-result p1

    .line 3447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3448
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3427
    :pswitch_4d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3429
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IMapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IMapCallback;

    move-result-object p1

    .line 3430
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->unregisterMapCallback(Lnfore/android/bt/servicemanager/IMapCallback;)Z

    move-result p1

    .line 3431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3432
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3417
    :pswitch_4e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3419
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IMapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IMapCallback;

    move-result-object p1

    .line 3420
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->registerMapCallback(Lnfore/android/bt/servicemanager/IMapCallback;)Z

    move-result p1

    .line 3421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3422
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3407
    :pswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3410
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getPbapCurrentState(Ljava/lang/String;)I

    move-result p1

    .line 3411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3412
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3397
    :pswitch_50
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3400
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqPbapDownloadInterrupt(Ljava/lang/String;)Z

    move-result p1

    .line 3401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3402
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3390
    :pswitch_51
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3391
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqPbapCleanDatabase()V

    .line 3392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3381
    :pswitch_52
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3383
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3384
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqPbapDeleteDatabaseByAddress(Ljava/lang/String;)V

    .line 3385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3370
    :pswitch_53
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3372
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3374
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 3375
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqPbapQueryName(Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3361
    :pswitch_54
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3363
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3364
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqPbapDatabaseAvailable(Ljava/lang/String;)V

    .line 3365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3345
    :pswitch_55
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    move v0, v1

    .line 3354
    :cond_3
    invoke-virtual {p0, p1, p4, v2, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z

    move-result p1

    .line 3355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3356
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3335
    :pswitch_56
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3337
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IPbapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IPbapCallback;

    move-result-object p1

    .line 3338
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->unregisterPbapCallback(Lnfore/android/bt/servicemanager/IPbapCallback;)Z

    move-result p1

    .line 3339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3340
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3325
    :pswitch_57
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3327
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IPbapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IPbapCallback;

    move-result-object p1

    .line 3328
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->registerPbapCallback(Lnfore/android/bt/servicemanager/IPbapCallback;)Z

    move-result p1

    .line 3329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3330
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3314
    :pswitch_58
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3318
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 3319
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqSppSendData(Ljava/lang/String;[B)V

    .line 3320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3304
    :pswitch_59
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3307
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isSppConnected(Ljava/lang/String;)Z

    move-result p1

    .line 3308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3309
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3297
    :pswitch_5a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3298
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqSppConnectedDeviceAddressList()V

    .line 3299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3287
    :pswitch_5b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3290
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqSppDisconnect(Ljava/lang/String;)Z

    move-result p1

    .line 3291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3292
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3277
    :pswitch_5c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3279
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3280
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqSppConnect(Ljava/lang/String;)Z

    move-result p1

    .line 3281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3282
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3267
    :pswitch_5d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3269
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/ISppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/ISppCallback;

    move-result-object p1

    .line 3270
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->unregisterSppCallback(Lnfore/android/bt/servicemanager/ISppCallback;)Z

    move-result p1

    .line 3271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3272
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3257
    :pswitch_5e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3259
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/ISppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/ISppCallback;

    move-result-object p1

    .line 3260
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->registerSppCallback(Lnfore/android/bt/servicemanager/ISppCallback;)Z

    move-result p1

    .line 3261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3262
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3243
    :pswitch_5f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3247
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 3249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 3250
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHspRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z

    move-result p1

    .line 3251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3252
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3231
    :pswitch_60
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3235
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 3236
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHspAudioTransfer(Ljava/lang/String;B)Z

    move-result p1

    .line 3237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3238
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3221
    :pswitch_61
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3224
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHspTerminateOngoingCall(Ljava/lang/String;)Z

    move-result p1

    .line 3225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3226
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3211
    :pswitch_62
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3214
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHspRejectIncomingCall(Ljava/lang/String;)Z

    move-result p1

    .line 3215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3216
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3201
    :pswitch_63
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3204
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHspAnswerCall(Ljava/lang/String;)Z

    move-result p1

    .line 3205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3206
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3191
    :pswitch_64
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3194
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHspReDial(Ljava/lang/String;)Z

    move-result p1

    .line 3195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3196
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3181
    :pswitch_65
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3184
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getHspCurrentScoState(Ljava/lang/String;)I

    move-result p1

    .line 3185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3186
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3171
    :pswitch_66
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3174
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getHspCurrentState(Ljava/lang/String;)I

    move-result p1

    .line 3175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3176
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3163
    :pswitch_67
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3164
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getHspConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p1

    .line 3165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3166
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3153
    :pswitch_68
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3156
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHspDisconnect(Ljava/lang/String;)Z

    move-result p1

    .line 3157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3143
    :pswitch_69
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3146
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHspConnect(Ljava/lang/String;)Z

    move-result p1

    .line 3147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3148
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3133
    :pswitch_6a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IHspCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IHspCallback;

    move-result-object p1

    .line 3136
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->unregisterHspCallback(Lnfore/android/bt/servicemanager/IHspCallback;)Z

    move-result p1

    .line 3137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3123
    :pswitch_6b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IHspCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IHspCallback;

    move-result-object p1

    .line 3126
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->registerHspCallback(Lnfore/android/bt/servicemanager/IHspCallback;)Z

    move-result p1

    .line 3127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3128
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3111
    :pswitch_6c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    move v0, v1

    .line 3116
    :cond_4
    invoke-virtual {p0, p1, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpVoiceDial(Ljava/lang/String;Z)Z

    move-result p1

    .line 3117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3118
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3097
    :pswitch_6d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3099
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3101
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 3103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 3104
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z

    move-result p1

    .line 3105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3087
    :pswitch_6e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3090
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpAtDownloadSMS(Ljava/lang/String;)Z

    move-result p1

    .line 3091
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3092
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3075
    :pswitch_6f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3077
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3079
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 3080
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpAtDownloadPhonebook(Ljava/lang/String;I)Z

    move-result p1

    .line 3081
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3082
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3064
    :pswitch_70
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3066
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3068
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move v0, v1

    .line 3069
    :cond_5
    invoke-virtual {p0, p1, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->setHfpAtNewSmsNotify(Ljava/lang/String;Z)V

    .line 3070
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3054
    :pswitch_71
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3056
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3057
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getHfpRemoteDeviceSignalStatus(Ljava/lang/String;)I

    move-result p1

    .line 3058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3059
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3044
    :pswitch_72
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3046
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3047
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getHfpRemoteDeviceBatteryStatus(Ljava/lang/String;)I

    move-result p1

    .line 3048
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3049
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3034
    :pswitch_73
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3036
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3037
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isHfpRemoteDeviceOnRoaming(Ljava/lang/String;)Z

    move-result p1

    .line 3038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3039
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3024
    :pswitch_74
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3026
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3027
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isHfpRemoteDeviceTelecomServiceOn(Ljava/lang/String;)Z

    move-result p1

    .line 3028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3029
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3014
    :pswitch_75
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3016
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3017
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;)Z

    move-result p1

    .line 3018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3019
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3004
    :pswitch_76
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3006
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3007
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpRemoteDeviceNetworkOperator(Ljava/lang/String;)Z

    move-result p1

    .line 3008
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3009
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2994
    :pswitch_77
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2996
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2997
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpRemoteDevicePhoneNumber(Ljava/lang/String;)Z

    move-result p1

    .line 2998
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2999
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2984
    :pswitch_78
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2986
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2987
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getHfpRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2988
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2989
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2975
    :pswitch_79
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2977
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2978
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpRemoteDeviceInfo(Ljava/lang/String;)V

    .line 2979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2966
    :pswitch_7a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    .line 2969
    :cond_6
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->setHfpLocalRingEnable(Z)V

    .line 2970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2954
    :pswitch_7b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2956
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2958
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 2959
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpAudioTransfer(Ljava/lang/String;B)Z

    move-result p1

    .line 2960
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2961
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2942
    :pswitch_7c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2944
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2946
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2947
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpSendDtmf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 2948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2949
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2930
    :pswitch_7d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2934
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 2935
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpMultiCallControl(Ljava/lang/String;B)Z

    move-result p1

    .line 2936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2937
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2920
    :pswitch_7e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2922
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2923
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpTerminateOngoingCall(Ljava/lang/String;)Z

    move-result p1

    .line 2924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2925
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2910
    :pswitch_7f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2912
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2913
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpRejectIncomingCall(Ljava/lang/String;)Z

    move-result p1

    .line 2914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2915
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2900
    :pswitch_80
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2902
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2903
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpAnswerCall(Ljava/lang/String;)Z

    move-result p1

    .line 2904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2905
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2888
    :pswitch_81
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2890
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2892
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2893
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpMemoryDial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 2894
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2895
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2878
    :pswitch_82
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2880
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2881
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpReDial(Ljava/lang/String;)Z

    move-result p1

    .line 2882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2883
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2866
    :pswitch_83
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2868
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2870
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2871
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 2872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2873
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2856
    :pswitch_84
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2858
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2859
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isHfpVoiceControlOn(Ljava/lang/String;)Z

    move-result p1

    .line 2860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2861
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2846
    :pswitch_85
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2848
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2849
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getHfpCurrentScoState(Ljava/lang/String;)I

    move-result p1

    .line 2850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2851
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2836
    :pswitch_86
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2838
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2839
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getHfpCurrentState(Ljava/lang/String;)I

    move-result p1

    .line 2840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2841
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2828
    :pswitch_87
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p1

    .line 2830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2831
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2818
    :pswitch_88
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2820
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2821
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpDisconnect(Ljava/lang/String;)Z

    move-result p1

    .line 2822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2823
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2808
    :pswitch_89
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2810
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2811
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqHfpConnect(Ljava/lang/String;)Z

    move-result p1

    .line 2812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2813
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2798
    :pswitch_8a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2800
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IHfpCallback;

    move-result-object p1

    .line 2801
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->unregisterHfpCallback(Lnfore/android/bt/servicemanager/IHfpCallback;)Z

    move-result p1

    .line 2802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2803
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2788
    :pswitch_8b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2790
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IHfpCallback;

    move-result-object p1

    .line 2791
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->registerHfpCallback(Lnfore/android/bt/servicemanager/IHfpCallback;)Z

    move-result p1

    .line 2792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2793
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2778
    :pswitch_8c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2780
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2781
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqBluetoothRemoteUuids(Ljava/lang/String;)I

    move-result p1

    .line 2782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2783
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2770
    :pswitch_8d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2771
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqBluetoothDisconnectAll()I

    move-result p1

    .line 2772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2773
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2760
    :pswitch_8e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2762
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2763
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqBluetoothConnectAll(Ljava/lang/String;)I

    move-result p1

    .line 2764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2765
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2752
    :pswitch_8f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2753
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isBluetoothAutoReconnectEnable()Z

    move-result p1

    .line 2754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2755
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2743
    :pswitch_90
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v0, v1

    .line 2746
    :cond_7
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->setBluetoothAutoReconnectForceOor(Z)V

    .line 2747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2734
    :pswitch_91
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2736
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v0, v1

    .line 2737
    :cond_8
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->setBluetoothAutoReconnect(Z)V

    .line 2738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2726
    :pswitch_92
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2727
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isBluetoothDiscoverable()Z

    move-result p1

    .line 2728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2729
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2718
    :pswitch_93
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2719
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isBluetoothScanning()Z

    move-result p1

    .line 2720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2721
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2710
    :pswitch_94
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2711
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getBluetoothCurrentState()I

    move-result p1

    .line 2712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2713
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2702
    :pswitch_95
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2703
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->isBluetoothEnable()Z

    move-result p1

    .line 2704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2705
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2692
    :pswitch_96
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2694
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2695
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->setBluetoothLocalAdapterName(Ljava/lang/String;)Z

    move-result p1

    .line 2696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2697
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2684
    :pswitch_97
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getBluetoothLocalAdapterAddress()Ljava/lang/String;

    move-result-object p1

    .line 2686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2687
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2674
    :pswitch_98
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2677
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2679
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2666
    :pswitch_99
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2667
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object p1

    .line 2668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2669
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2658
    :pswitch_9a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2659
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqBluetoothPairedDevices()Z

    move-result p1

    .line 2660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2661
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2650
    :pswitch_9b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2651
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqBluetoothUnpairAllNextTime()Z

    move-result p1

    .line 2652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2653
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2642
    :pswitch_9c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2643
    invoke-virtual {p0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqBluetoothUnpairAll()Z

    move-result p1

    .line 2644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2645
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2632
    :pswitch_9d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2634
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2635
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqBluetoothUnpair(Ljava/lang/String;)Z

    move-result p1

    .line 2636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2637
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2622
    :pswitch_9e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2624
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2625
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqBluetoothPair(Ljava/lang/String;)Z

    move-result p1

    .line 2626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2627
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2612
    :pswitch_9f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    move v0, v1

    .line 2615
    :cond_9
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->reqBluetoothScanning(Z)Z

    move-result p1

    .line 2616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2617
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2602
    :pswitch_a0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    move v0, v1

    .line 2605
    :cond_a
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->setBluetoothDiscoverablePermanent(Z)Z

    move-result p1

    .line 2606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2607
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2592
    :pswitch_a1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2595
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->setBluetoothDiscoverableDuration(I)Z

    move-result p1

    .line 2596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2597
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2582
    :pswitch_a2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    move v0, v1

    .line 2585
    :cond_b
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->setBluetoothEnable(Z)Z

    move-result p1

    .line 2586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2587
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2572
    :pswitch_a3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2574
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object p1

    .line 2575
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->unregisterNforeServiceCallback(Lnfore/android/bt/servicemanager/IServiceCallback;)Z

    move-result p1

    .line 2576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2577
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2562
    :pswitch_a4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2564
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object p1

    .line 2565
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->registerNforeServiceCallback(Lnfore/android/bt/servicemanager/IServiceCallback;)Z

    move-result p1

    .line 2566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2567
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2557
    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
