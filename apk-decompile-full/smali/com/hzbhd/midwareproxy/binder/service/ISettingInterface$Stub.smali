.class public abstract Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;
.super Landroid/os/Binder;
.source "ISettingInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

.field static final TRANSACTION_SetBTMic:I = 0x9f

.field static final TRANSACTION_closeSWC:I = 0xca

.field static final TRANSACTION_enableFactoryReset:I = 0x14

.field static final TRANSACTION_enableGPSSyncSwitch:I = 0x16

.field static final TRANSACTION_enableRDSSyncSwitch:I = 0x24

.field static final TRANSACTION_endSWCSample:I = 0xce

.field static final TRANSACTION_getAV1Gain:I = 0x74

.field static final TRANSACTION_getAV2Gain:I = 0x76

.field static final TRANSACTION_getAntStasus:I = 0x109

.field static final TRANSACTION_getBTAudioGain:I = 0xec

.field static final TRANSACTION_getBTGain:I = 0x70

.field static final TRANSACTION_getBTMic:I = 0x9e

.field static final TRANSACTION_getBTPhoneGain:I = 0xea

.field static final TRANSACTION_getBeep:I = 0x49

.field static final TRANSACTION_getBgLigtSettingInfo:I = 0x35

.field static final TRANSACTION_getBlackOut:I = 0x45

.field static final TRANSACTION_getBrightness:I = 0x30

.field static final TRANSACTION_getCameraMode:I = 0x41

.field static final TRANSACTION_getCameraOutGain:I = 0x2a

.field static final TRANSACTION_getCanBaudRate:I = 0x103

.field static final TRANSACTION_getCanIsAppHandleKey:I = 0x10f

.field static final TRANSACTION_getCanPackType:I = 0x111

.field static final TRANSACTION_getCanVersionInfo:I = 0x53

.field static final TRANSACTION_getCanbusAirHide:I = 0xef

.field static final TRANSACTION_getCanbusSwapKeyPrevNext:I = 0xf3

.field static final TRANSACTION_getCanbusSwapKeyUpDn:I = 0xf1

.field static final TRANSACTION_getCarLogoIndex:I = 0x33

.field static final TRANSACTION_getCarMediaGain:I = 0xe5

.field static final TRANSACTION_getChildrenLockLevel:I = 0x62

.field static final TRANSACTION_getChildrenLockLevelState:I = 0x60

.field static final TRANSACTION_getChildrenLockPassword:I = 0x5e

.field static final TRANSACTION_getCloseReverseDetect:I = 0x11a

.field static final TRANSACTION_getCmmbGain:I = 0x64

.field static final TRANSACTION_getColorLed:I = 0xd7

.field static final TRANSACTION_getColorLedType:I = 0xd8

.field static final TRANSACTION_getConfigAmbulance:I = 0xf9

.field static final TRANSACTION_getCurrentArea:I = 0x4d

.field static final TRANSACTION_getCustomerID:I = 0x5

.field static final TRANSACTION_getDVDAudio:I = 0x58

.field static final TRANSACTION_getDVDGain:I = 0x6c

.field static final TRANSACTION_getDVDSubTitle:I = 0x5a

.field static final TRANSACTION_getDVDTestCount:I = 0xa0

.field static final TRANSACTION_getDabGain:I = 0x6a

.field static final TRANSACTION_getDefaultSharedUtilBoolean:I = 0xfb

.field static final TRANSACTION_getDefaultSharedUtilInt:I = 0xfa

.field static final TRANSACTION_getDgcMCUVersion:I = 0x8

.field static final TRANSACTION_getDiscEjectingTime:I = 0x100

.field static final TRANSACTION_getDiscEnteringTime:I = 0xff

.field static final TRANSACTION_getDiscMenu:I = 0x5c

.field static final TRANSACTION_getDvbtGain:I = 0x66

.field static final TRANSACTION_getEQBass:I = 0xac

.field static final TRANSACTION_getEQBassQValue:I = 0xbd

.field static final TRANSACTION_getEQBassValue:I = 0xad

.field static final TRANSACTION_getEQLevelValue:I = 0x115

.field static final TRANSACTION_getEQMid:I = 0xae

.field static final TRANSACTION_getEQMidQValue:I = 0xbf

.field static final TRANSACTION_getEQMidValue:I = 0xaf

.field static final TRANSACTION_getEQTreble:I = 0xb0

.field static final TRANSACTION_getEQTrebleValue:I = 0xb1

.field static final TRANSACTION_getEQType:I = 0xaa

.field static final TRANSACTION_getEQTypeFreqLevelValue:I = 0xc3

.field static final TRANSACTION_getEQ_HARDWARE_VERSION:I = 0xc4

.field static final TRANSACTION_getFactory4GModule:I = 0x123

.field static final TRANSACTION_getFactoryAMDistant:I = 0x87

.field static final TRANSACTION_getFactoryAMLocal:I = 0x85

.field static final TRANSACTION_getFactoryCanType:I = 0x8d

.field static final TRANSACTION_getFactoryDirection:I = 0x127

.field static final TRANSACTION_getFactoryDtvModule:I = 0x92

.field static final TRANSACTION_getFactoryEncoding:I = 0x129

.field static final TRANSACTION_getFactoryFMDistant:I = 0x83

.field static final TRANSACTION_getFactoryFMLocal:I = 0x81

.field static final TRANSACTION_getFactoryLcdDriveConfig:I = 0x125

.field static final TRANSACTION_getFactoryLvdsDisplayDriverCurrentLevel:I = 0x11c

.field static final TRANSACTION_getFactoryPanelType:I = 0x51

.field static final TRANSACTION_getFactoryRDSType:I = 0x7f

.field static final TRANSACTION_getFactoryRadioArea:I = 0x7b

.field static final TRANSACTION_getFactoryRadioModel:I = 0x7d

.field static final TRANSACTION_getFactorySystemAutodimmerfunc:I = 0x96

.field static final TRANSACTION_getFactorySystemBrakeoverride:I = 0x98

.field static final TRANSACTION_getFactorySystemMechaback:I = 0x9a

.field static final TRANSACTION_getFactorySystemRegioncode:I = 0x89

.field static final TRANSACTION_getFactorySystemTVArea:I = 0x8b

.field static final TRANSACTION_getFactoryT8AVOUT_Display:I = 0x95

.field static final TRANSACTION_getFadeBalanceFL:I = 0xa1

.field static final TRANSACTION_getFadeBalanceFR:I = 0xa2

.field static final TRANSACTION_getFadeBalanceRL:I = 0xa3

.field static final TRANSACTION_getFadeBalanceRR:I = 0xa4

.field static final TRANSACTION_getFastCharging:I = 0x105

.field static final TRANSACTION_getFastChargingisSupport:I = 0x107

.field static final TRANSACTION_getFrontCameraMode:I = 0x3f

.field static final TRANSACTION_getGPSSyncSwitch:I = 0x15

.field static final TRANSACTION_getHeadlightSwitch:I = 0x17

.field static final TRANSACTION_getHourMode:I = 0x4b

.field static final TRANSACTION_getIsSoundMix:I = 0x1

.field static final TRANSACTION_getKeyColor:I = 0x43

.field static final TRANSACTION_getLoudness:I = 0xa8

.field static final TRANSACTION_getMCUVersion:I = 0x7

.field static final TRANSACTION_getMcuAmpItem:I = 0xe3

.field static final TRANSACTION_getMcuTestItem:I = 0x9

.field static final TRANSACTION_getMediaGain:I = 0xe4

.field static final TRANSACTION_getMotorInfo:I = 0x37

.field static final TRANSACTION_getNaviGain:I = 0xe8

.field static final TRANSACTION_getNavigationModule:I = 0x47

.field static final TRANSACTION_getNetworkLicense:I = 0xf8

.field static final TRANSACTION_getPNLAllKeyInfo:I = 0xc6

.field static final TRANSACTION_getPanoramicCameraSwitch:I = 0x1f

.field static final TRANSACTION_getParking:I = 0x72

.field static final TRANSACTION_getPowerKeySwitch:I = 0x21

.field static final TRANSACTION_getRDSSyncSwitch:I = 0x23

.field static final TRANSACTION_getRadioGain:I = 0x6e

.field static final TRANSACTION_getRadioRange:I = 0x4f

.field static final TRANSACTION_getReversingBaseline:I = 0x1d

.field static final TRANSACTION_getReversingMute:I = 0x1b

.field static final TRANSACTION_getReversingTrackSwitch:I = 0x19

.field static final TRANSACTION_getSWCLearnLevel:I = 0x11f

.field static final TRANSACTION_getSWCSettings:I = 0xcb

.field static final TRANSACTION_getScreenreverse:I = 0x90

.field static final TRANSACTION_getSharedBool:I = 0xb

.field static final TRANSACTION_getSharedInt:I = 0xa

.field static final TRANSACTION_getSharedStr:I = 0xc

.field static final TRANSACTION_getShutDownDelayTimeAccOff:I = 0xde

.field static final TRANSACTION_getSoundMixScale:I = 0xb2

.field static final TRANSACTION_getSubSwitch:I = 0x54

.field static final TRANSACTION_getSubWFilter:I = 0x56

.field static final TRANSACTION_getSubWGain:I = 0xa6

.field static final TRANSACTION_getSwcLongKeySetting:I = 0xcc

.field static final TRANSACTION_getSysSetting:I = 0x116

.field static final TRANSACTION_getTVOutGain:I = 0x2e

.field static final TRANSACTION_getUbootVersion:I = 0x120

.field static final TRANSACTION_getVcom:I = 0xf6

.field static final TRANSACTION_getVideoChipN3ChannelType:I = 0x10b

.field static final TRANSACTION_getVideoInput:I = 0x26

.field static final TRANSACTION_getVideoOutGain:I = 0x2c

.field static final TRANSACTION_getVideoOutput:I = 0x28

.field static final TRANSACTION_getVolumeValue:I = 0x32

.field static final TRANSACTION_getXmGain:I = 0x68

.field static final TRANSACTION_getreverse_exit_mcudelaytime_settings:I = 0x117

.field static final TRANSACTION_notifyCarplayVolumeType:I = 0x112

.field static final TRANSACTION_openSWC:I = 0xc9

.field static final TRANSACTION_playBeep:I = 0x12

.field static final TRANSACTION_pnlSample:I = 0xc7

.field static final TRANSACTION_reSetSWC:I = 0xd1

.field static final TRANSACTION_refreshEQType:I = 0xe2

.field static final TRANSACTION_registerAutoTestCallBack:I = 0xd4

.field static final TRANSACTION_registerCallBack:I = 0x3

.field static final TRANSACTION_registerSWCCallBack:I = 0xd2

.field static final TRANSACTION_reporTestMcuInfor:I = 0x3e

.field static final TRANSACTION_reportCanbusInfo:I = 0x3b

.field static final TRANSACTION_reportCanbusInfoOther:I = 0x3c

.field static final TRANSACTION_reportCanbusUpdData:I = 0x3d

.field static final TRANSACTION_reportDevice_YH:I = 0x12b

.field static final TRANSACTION_reportKeySensitivityValue:I = 0x101

.field static final TRANSACTION_reportSmartPowerInfo:I = 0x121

.field static final TRANSACTION_reqCanbusInfo:I = 0x39

.field static final TRANSACTION_reqMcuKey:I = 0x3a

.field static final TRANSACTION_reqMotorInfo:I = 0x38

.field static final TRANSACTION_reqPNLAllKeyInfo:I = 0xc5

.field static final TRANSACTION_requestEqBalance:I = 0xdc

.field static final TRANSACTION_resetMpuDelay:I = 0x13

.field static final TRANSACTION_saveAppdata:I = 0xe0

.field static final TRANSACTION_saveChipN3BackCameraColorAdjust_to_bsp:I = 0x122

.field static final TRANSACTION_savePNLSettings:I = 0xc8

.field static final TRANSACTION_saveSWCSettings:I = 0xcf

.field static final TRANSACTION_saveSWCSettingsLongKey:I = 0xd0

.field static final TRANSACTION_sendAppdata:I = 0xe1

.field static final TRANSACTION_sendSelectCarCanTypeInfoMCU:I = 0x10d

.field static final TRANSACTION_setAV1Gain:I = 0x75

.field static final TRANSACTION_setAV2Gain:I = 0x77

.field static final TRANSACTION_setAnalogInputColor:I = 0xfc

.field static final TRANSACTION_setAntStasus:I = 0x108

.field static final TRANSACTION_setAutoTestLocationToPC:I = 0xd6

.field static final TRANSACTION_setAutoTestVersionToPC:I = 0xdb

.field static final TRANSACTION_setBTAudioGain:I = 0xed

.field static final TRANSACTION_setBTGain:I = 0x71

.field static final TRANSACTION_setBTPhoneGain:I = 0xeb

.field static final TRANSACTION_setBeep:I = 0x4a

.field static final TRANSACTION_setBgLigtSettingInfo:I = 0x36

.field static final TRANSACTION_setBlackOut:I = 0x46

.field static final TRANSACTION_setBrightness:I = 0x31

.field static final TRANSACTION_setCameraMode:I = 0x42

.field static final TRANSACTION_setCameraOutGain:I = 0x2b

.field static final TRANSACTION_setCanBaudRate:I = 0x102

.field static final TRANSACTION_setCanIsAppHandleKey:I = 0x10e

.field static final TRANSACTION_setCanPackType:I = 0x110

.field static final TRANSACTION_setCanbuKeySwap:I = 0xf4

.field static final TRANSACTION_setCanbusAirHide:I = 0xee

.field static final TRANSACTION_setCanbusSwapKeyPrevNext:I = 0xf2

.field static final TRANSACTION_setCanbusSwapKeyUpDn:I = 0xf0

.field static final TRANSACTION_setCarLogoIndex:I = 0x34

.field static final TRANSACTION_setCarMediaGain:I = 0xe7

.field static final TRANSACTION_setChildrenLockLevel:I = 0x63

.field static final TRANSACTION_setChildrenLockLevelState:I = 0x61

.field static final TRANSACTION_setChildrenLockPassword:I = 0x5f

.field static final TRANSACTION_setCloseReverseDetect:I = 0x119

.field static final TRANSACTION_setCmmbGain:I = 0x65

.field static final TRANSACTION_setColorLed:I = 0xd9

.field static final TRANSACTION_setColorLedwithType:I = 0xda

.field static final TRANSACTION_setCoolerFanSupport:I = 0x113

.field static final TRANSACTION_setCurrentArea:I = 0x4e

.field static final TRANSACTION_setCustomerID:I = 0x6

.field static final TRANSACTION_setDVDAudio:I = 0x59

.field static final TRANSACTION_setDVDGain:I = 0x6d

.field static final TRANSACTION_setDVDSubTitle:I = 0x5b

.field static final TRANSACTION_setDabGain:I = 0x6b

.field static final TRANSACTION_setDateTime:I = 0x25

.field static final TRANSACTION_setDiscEjectingTime:I = 0xfe

.field static final TRANSACTION_setDiscEnteringTime:I = 0xfd

.field static final TRANSACTION_setDiscMenu:I = 0x5d

.field static final TRANSACTION_setDvbtGain:I = 0x67

.field static final TRANSACTION_setDvdClearCounter:I = 0x79

.field static final TRANSACTION_setDvdServoLoaderStart:I = 0x78

.field static final TRANSACTION_setEQBass:I = 0xb4

.field static final TRANSACTION_setEQBassAndValue:I = 0xb6

.field static final TRANSACTION_setEQBassQValue:I = 0xbe

.field static final TRANSACTION_setEQBassValue:I = 0xb5

.field static final TRANSACTION_setEQLevelValue:I = 0x114

.field static final TRANSACTION_setEQMid:I = 0xb7

.field static final TRANSACTION_setEQMidAndValue:I = 0xb9

.field static final TRANSACTION_setEQMidQValue:I = 0xc0

.field static final TRANSACTION_setEQMidValue:I = 0xb8

.field static final TRANSACTION_setEQResetDefault:I = 0xc1

.field static final TRANSACTION_setEQTreble:I = 0xba

.field static final TRANSACTION_setEQTrebleAndValue:I = 0xbc

.field static final TRANSACTION_setEQTrebleValue:I = 0xbb

.field static final TRANSACTION_setEQType:I = 0xab

.field static final TRANSACTION_setEQTypeFreqLevelValue:I = 0xc2

.field static final TRANSACTION_setFactory4GModule:I = 0x124

.field static final TRANSACTION_setFactoryAMDistant:I = 0x88

.field static final TRANSACTION_setFactoryAMLocal:I = 0x86

.field static final TRANSACTION_setFactoryBtModule:I = 0x91

.field static final TRANSACTION_setFactoryCanType:I = 0x8e

.field static final TRANSACTION_setFactoryDirection:I = 0x128

.field static final TRANSACTION_setFactoryDtvModule:I = 0x93

.field static final TRANSACTION_setFactoryEncoding:I = 0x12a

.field static final TRANSACTION_setFactoryFMDistant:I = 0x84

.field static final TRANSACTION_setFactoryFMLocal:I = 0x82

.field static final TRANSACTION_setFactoryLcdDriveConfig:I = 0x126

.field static final TRANSACTION_setFactoryLoadDefault:I = 0x9d

.field static final TRANSACTION_setFactoryLvdsDisplayDriverCurrentLevel:I = 0x11d

.field static final TRANSACTION_setFactoryPanelType:I = 0x52

.field static final TRANSACTION_setFactoryRDSType:I = 0x80

.field static final TRANSACTION_setFactoryRadioArea:I = 0x7c

.field static final TRANSACTION_setFactoryRadioModel:I = 0x7e

.field static final TRANSACTION_setFactorySettingInfoToMcu:I = 0x11

.field static final TRANSACTION_setFactorySystemAutodimmerfunc:I = 0x97

.field static final TRANSACTION_setFactorySystemBrakeoverride:I = 0x99

.field static final TRANSACTION_setFactorySystemMechaback:I = 0x9b

.field static final TRANSACTION_setFactorySystemRegioncode:I = 0x8a

.field static final TRANSACTION_setFactorySystemTVArea:I = 0x8c

.field static final TRANSACTION_setFactoryT8AVOUT_Display:I = 0x94

.field static final TRANSACTION_setFactoryTFTMotorteststart:I = 0x9c

.field static final TRANSACTION_setFadeBalance:I = 0xa5

.field static final TRANSACTION_setFastCharging:I = 0x104

.field static final TRANSACTION_setFastChargingisSupport:I = 0x106

.field static final TRANSACTION_setFrontCameraMode:I = 0x40

.field static final TRANSACTION_setHdmiDisplayerResolution:I = 0x10c

.field static final TRANSACTION_setHeadlightSwitch:I = 0x18

.field static final TRANSACTION_setHostPowerAmp:I = 0x11b

.field static final TRANSACTION_setHourMode:I = 0x4c

.field static final TRANSACTION_setIsSoundMix:I = 0x2

.field static final TRANSACTION_setKeyColor:I = 0x44

.field static final TRANSACTION_setKeyDebug:I = 0x7a

.field static final TRANSACTION_setLoudness:I = 0xa9

.field static final TRANSACTION_setMediaGain:I = 0xe6

.field static final TRANSACTION_setNaviGain:I = 0xe9

.field static final TRANSACTION_setNavigationModule:I = 0x48

.field static final TRANSACTION_setNetworkLicense:I = 0xf7

.field static final TRANSACTION_setPanoramicCameraSwitch:I = 0x20

.field static final TRANSACTION_setParking:I = 0x73

.field static final TRANSACTION_setPowerKeySwitch:I = 0x22

.field static final TRANSACTION_setRadioGain:I = 0x6f

.field static final TRANSACTION_setRadioRange:I = 0x50

.field static final TRANSACTION_setReversingBaseline:I = 0x1e

.field static final TRANSACTION_setReversingMute:I = 0x1c

.field static final TRANSACTION_setReversingTrackSwitch:I = 0x1a

.field static final TRANSACTION_setSWCLearnLevel:I = 0x11e

.field static final TRANSACTION_setScreenreverse:I = 0x8f

.field static final TRANSACTION_setSharedBool:I = 0xe

.field static final TRANSACTION_setSharedInt:I = 0xd

.field static final TRANSACTION_setSharedStr:I = 0xf

.field static final TRANSACTION_setSharedValueToMpu:I = 0x10

.field static final TRANSACTION_setShutDownDelayTimeAccOff:I = 0xdf

.field static final TRANSACTION_setSoundMixScale:I = 0xb3

.field static final TRANSACTION_setSubSwitch:I = 0x55

.field static final TRANSACTION_setSubWFilter:I = 0x57

.field static final TRANSACTION_setSubWGain:I = 0xa7

.field static final TRANSACTION_setTVOutGain:I = 0x2f

.field static final TRANSACTION_setTpmsPlaying:I = 0xdd

.field static final TRANSACTION_setVcom:I = 0xf5

.field static final TRANSACTION_setVideoChipN3ChannelType:I = 0x10a

.field static final TRANSACTION_setVideoInput:I = 0x27

.field static final TRANSACTION_setVideoOutGain:I = 0x2d

.field static final TRANSACTION_setVideoOutput:I = 0x29

.field static final TRANSACTION_setXmGain:I = 0x69

.field static final TRANSACTION_setreverse_exit_mcudelaytime_settings:I = 0x118

.field static final TRANSACTION_startSWCSample:I = 0xcd

.field static final TRANSACTION_unRegisterAutoTestCallBack:I = 0xd5

.field static final TRANSACTION_unRegisterCallBack:I = 0x4

.field static final TRANSACTION_unRegisterSWCCallBack:I = 0xd3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2094
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 2095
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 2106
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2107
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-eqz v1, :cond_1

    .line 2108
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    return-object v0

    .line 2110
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;
    .locals 1

    .line 12145
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    return-object v0
.end method

.method private onTransact$reportKeySensitivityValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 12047
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12049
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 12051
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 12052
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->reportKeySensitivityValue(B[B)V

    .line 12053
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$saveChipN3BackCameraColorAdjust_to_bsp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 12117
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12124
    invoke-virtual {p0, v0, v1, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->saveChipN3BackCameraColorAdjust_to_bsp(III)V

    .line 12125
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$savePNLSettings$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11909
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11911
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11913
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 11914
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->savePNLSettings(I[B)V

    .line 11915
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$sendSelectCarCanTypeInfoMCU$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 12081
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12083
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12085
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12087
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 12089
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12090
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->sendSelectCarCanTypeInfoMCU(IIII)V

    .line 12091
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setAnalogInputColor$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 12029
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12031
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12033
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12035
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12036
    invoke-virtual {p0, v0, v1, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setAnalogInputColor(III)V

    .line 12037
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setAutoTestLocationToPC$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11934
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11936
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 11937
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11943
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11944
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setAutoTestLocationToPC(Landroid/location/Location;I)V

    .line 11945
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setCanbuKeySwap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 12010
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12012
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 12014
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    .line 12015
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCanbuKeySwap(ZZ)V

    .line 12016
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    return v2
.end method

.method private onTransact$setColorLed$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11953
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11955
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11957
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 11959
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 11961
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 11962
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setColorLed(ZBBB)V

    .line 11963
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method

.method private onTransact$setColorLedwithType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11969
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11971
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 11973
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 11975
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 11977
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 11978
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setColorLedwithType(BBBB)V

    .line 11979
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setDateTime$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11570
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11572
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 11574
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 11576
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 11578
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 11580
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 11582
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 11584
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    move-object v1, p0

    .line 11585
    invoke-virtual/range {v1 .. v8}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setDateTime(BBBBBBB)V

    .line 11586
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setEQBass$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11749
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11753
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11754
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQBass(II)V

    .line 11755
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setEQBassAndValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11773
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11775
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11779
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11780
    invoke-virtual {p0, v0, v1, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQBassAndValue(III)V

    .line 11781
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setEQBassQValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11864
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11869
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQBassQValue(II)V

    .line 11870
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setEQBassValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11761
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11763
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11765
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11766
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQBassValue(II)V

    .line 11767
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setEQMid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11787
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11789
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11791
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11792
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQMid(II)V

    .line 11793
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setEQMidAndValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11811
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11813
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11818
    invoke-virtual {p0, v0, v1, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQMidAndValue(III)V

    .line 11819
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setEQMidQValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11877
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11879
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11881
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11882
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQMidQValue(II)V

    .line 11883
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setEQMidValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11799
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11803
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11804
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQMidValue(II)V

    .line 11805
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setEQTreble$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11825
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11827
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11830
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQTreble(II)V

    .line 11831
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setEQTrebleAndValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11849
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11851
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11856
    invoke-virtual {p0, v0, v1, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQTrebleAndValue(III)V

    .line 11857
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setEQTrebleValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11837
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11842
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQTrebleValue(II)V

    .line 11843
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setEQTypeFreqLevelValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11890
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11892
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11894
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11896
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11897
    invoke-virtual {p0, v0, v1, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQTypeFreqLevelValue(III)V

    .line 11898
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setFadeBalance$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11719
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11721
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11725
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 11727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11728
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFadeBalance(IIII)V

    .line 11729
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method private onTransact$setVideoChipN3ChannelType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 12067
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12069
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12071
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12072
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setVideoChipN3ChannelType(II)V

    .line 12073
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;)Z
    .locals 1

    .line 12138
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 12139
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    if-eq p1, v0, :cond_20

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4593
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 4584
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4586
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 4587
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->reportDevice_YH([B)V

    .line 4588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4575
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4578
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryEncoding(I)V

    .line 4579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4567
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4568
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryEncoding()I

    move-result p1

    .line 4569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4570
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4558
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4561
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryDirection(I)V

    .line 4562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4550
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4551
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryDirection()I

    move-result p1

    .line 4552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4553
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4541
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4544
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryLcdDriveConfig(I)V

    .line 4545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4533
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4534
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryLcdDriveConfig()I

    move-result p1

    .line 4535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4536
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4524
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4527
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactory4GModule(I)V

    .line 4528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4516
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4517
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactory4GModule()I

    move-result p1

    .line 4518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4519
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4512
    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$saveChipN3BackCameraColorAdjust_to_bsp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4503
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4505
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 4506
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->reportSmartPowerInfo([B)V

    .line 4507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4495
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4496
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getUbootVersion()I

    move-result p1

    .line 4497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4498
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4487
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4488
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getSWCLearnLevel()I

    move-result p1

    .line 4489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4490
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4478
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4481
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setSWCLearnLevel(I)V

    .line 4482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4469
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4472
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryLvdsDisplayDriverCurrentLevel(I)V

    .line 4473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4461
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4462
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryLvdsDisplayDriverCurrentLevel()I

    move-result p1

    .line 4463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4464
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4452
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 4455
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setHostPowerAmp(Z)V

    .line 4456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4444
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4445
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCloseReverseDetect()Z

    move-result p1

    .line 4446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4447
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4435
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 4438
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCloseReverseDetect(Z)V

    .line 4439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4426
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4429
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setreverse_exit_mcudelaytime_settings(I)V

    .line 4430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4418
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4419
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getreverse_exit_mcudelaytime_settings()I

    move-result p1

    .line 4420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4421
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4411
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4412
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getSysSetting()V

    .line 4413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4403
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4404
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getEQLevelValue()[I

    move-result-object p1

    .line 4405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4406
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 4394
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4396
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 4397
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQLevelValue([I)V

    .line 4398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4385
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4388
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCoolerFanSupport(I)V

    .line 4389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4376
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4379
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->notifyCarplayVolumeType(I)V

    .line 4380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4368
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4369
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCanPackType()I

    move-result p1

    .line 4370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4371
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4359
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4362
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCanPackType(I)V

    .line 4363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4351
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4352
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCanIsAppHandleKey()I

    move-result p1

    .line 4353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4354
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4342
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4345
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCanIsAppHandleKey(I)V

    .line 4346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4338
    :pswitch_1e
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$sendSelectCarCanTypeInfoMCU$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4329
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4332
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setHdmiDisplayerResolution(I)V

    .line 4333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4319
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4322
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getVideoChipN3ChannelType(I)I

    move-result p1

    .line 4323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4324
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4315
    :pswitch_21
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setVideoChipN3ChannelType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4307
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4308
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getAntStasus()I

    move-result p1

    .line 4309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4310
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4298
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4301
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setAntStasus(I)V

    .line 4302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4290
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4291
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFastChargingisSupport()I

    move-result p1

    .line 4292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4293
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4281
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4284
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFastChargingisSupport(I)V

    .line 4285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4273
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4274
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFastCharging()I

    move-result p1

    .line 4275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4276
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4264
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4267
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFastCharging(I)V

    .line 4268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4256
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCanBaudRate()I

    move-result p1

    .line 4258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4259
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4247
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4250
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCanBaudRate(I)V

    .line 4251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4243
    :pswitch_2a
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$reportKeySensitivityValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4235
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4236
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDiscEjectingTime()B

    move-result p1

    .line 4237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4238
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 4227
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4228
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDiscEnteringTime()B

    move-result p1

    .line 4229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4230
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 4218
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4220
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 4221
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setDiscEjectingTime(B)V

    .line 4222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4209
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4211
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 4212
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setDiscEnteringTime(B)V

    .line 4213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4205
    :pswitch_2f
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setAnalogInputColor$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4195
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4198
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultSharedUtilBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 4199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4200
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4185
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4188
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultSharedUtilInt(Ljava/lang/String;)I

    move-result p1

    .line 4189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4190
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4177
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4178
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getConfigAmbulance()I

    move-result p1

    .line 4179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4180
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4169
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4170
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getNetworkLicense()I

    move-result p1

    .line 4171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4172
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4160
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4162
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 4163
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setNetworkLicense(B)V

    .line 4164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4152
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4153
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getVcom()I

    move-result p1

    .line 4154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4155
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4143
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4145
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 4146
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setVcom([B)V

    .line 4147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4139
    :pswitch_37
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setCanbuKeySwap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4131
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4132
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCanbusSwapKeyPrevNext()Z

    move-result p1

    .line 4133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4134
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4122
    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 4125
    :cond_2
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCanbusSwapKeyPrevNext(Z)V

    .line 4126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4114
    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4115
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCanbusSwapKeyUpDn()Z

    move-result p1

    .line 4116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4117
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4105
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 4108
    :cond_3
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCanbusSwapKeyUpDn(Z)V

    .line 4109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4097
    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4098
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCanbusAirHide()Z

    move-result p1

    .line 4099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4088
    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4090
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 4091
    :cond_4
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCanbusAirHide(Z)V

    .line 4092
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4079
    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4081
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4082
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setBTAudioGain(I)V

    .line 4083
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4071
    :pswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4072
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getBTAudioGain()I

    move-result p1

    .line 4073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4074
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4062
    :pswitch_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4064
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4065
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setBTPhoneGain(I)V

    .line 4066
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4054
    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4055
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getBTPhoneGain()I

    move-result p1

    .line 4056
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4057
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4045
    :pswitch_42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4047
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4048
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setNaviGain(I)V

    .line 4049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4037
    :pswitch_43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4038
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getNaviGain()I

    move-result p1

    .line 4039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4040
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4028
    :pswitch_44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4030
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4031
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCarMediaGain(I)V

    .line 4032
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4019
    :pswitch_45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4021
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4022
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setMediaGain(I)V

    .line 4023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 4011
    :pswitch_46
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4012
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCarMediaGain()I

    move-result p1

    .line 4013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4014
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 4003
    :pswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4004
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getMediaGain()I

    move-result p1

    .line 4005
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4006
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3993
    :pswitch_48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3995
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 3996
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getMcuAmpItem([B)[B

    move-result-object p1

    .line 3997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3998
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 3986
    :pswitch_49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->refreshEQType()V

    .line 3988
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3977
    :pswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3979
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3980
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->sendAppdata(Ljava/lang/String;)V

    .line 3981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3968
    :pswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3970
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3971
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->saveAppdata(Ljava/lang/String;)V

    .line 3972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3959
    :pswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3961
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 3962
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setShutDownDelayTimeAccOff(B)V

    .line 3963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3951
    :pswitch_4d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3952
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getShutDownDelayTimeAccOff()B

    move-result p1

    .line 3953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3954
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 3942
    :pswitch_4e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3944
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    .line 3945
    :cond_5
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setTpmsPlaying(Z)V

    .line 3946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3935
    :pswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3936
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->requestEqBalance()V

    .line 3937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3926
    :pswitch_50
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3928
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3929
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setAutoTestVersionToPC(I)V

    .line 3930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3922
    :pswitch_51
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setColorLedwithType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3918
    :pswitch_52
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setColorLed$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3910
    :pswitch_53
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3911
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getColorLedType()I

    move-result p1

    .line 3912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3913
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3902
    :pswitch_54
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3903
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getColorLed()[B

    move-result-object p1

    .line 3904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3905
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 3898
    :pswitch_55
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setAutoTestLocationToPC$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3889
    :pswitch_56
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3891
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;

    move-result-object p1

    .line 3892
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->unRegisterAutoTestCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;)V

    .line 3893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3880
    :pswitch_57
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3882
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;

    move-result-object p1

    .line 3883
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->registerAutoTestCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;)V

    .line 3884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3871
    :pswitch_58
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3873
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3874
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->unRegisterSWCCallBack(Ljava/lang/String;)V

    .line 3875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3861
    :pswitch_59
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3863
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface;

    move-result-object p1

    .line 3864
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->registerSWCCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface;)Ljava/lang/String;

    move-result-object p1

    .line 3865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3866
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3854
    :pswitch_5a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3855
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->reSetSWC()V

    .line 3856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3845
    :pswitch_5b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3847
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 3848
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->saveSWCSettingsLongKey([B)V

    .line 3849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3836
    :pswitch_5c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3838
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 3839
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->saveSWCSettings([B)V

    .line 3840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3829
    :pswitch_5d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->endSWCSample()V

    .line 3831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3820
    :pswitch_5e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3822
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 3823
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->startSWCSample(B)V

    .line 3824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3813
    :pswitch_5f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3814
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getSwcLongKeySetting()V

    .line 3815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3806
    :pswitch_60
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3807
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getSWCSettings()V

    .line 3808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3799
    :pswitch_61
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3800
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->closeSWC()V

    .line 3801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3792
    :pswitch_62
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3793
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->openSWC()V

    .line 3794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3788
    :pswitch_63
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$savePNLSettings$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3779
    :pswitch_64
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3782
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->pnlSample(I)V

    .line 3783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3769
    :pswitch_65
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3772
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getPNLAllKeyInfo(I)[B

    move-result-object p1

    .line 3773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3774
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 3760
    :pswitch_66
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3763
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->reqPNLAllKeyInfo(I)V

    .line 3764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3752
    :pswitch_67
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3753
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getEQ_HARDWARE_VERSION()I

    move-result p1

    .line 3754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3755
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3742
    :pswitch_68
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3744
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3745
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getEQTypeFreqLevelValue(I)[I

    move-result-object p1

    .line 3746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3747
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 3738
    :pswitch_69
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setEQTypeFreqLevelValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3731
    :pswitch_6a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3732
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQResetDefault()V

    .line 3733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3727
    :pswitch_6b
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setEQMidQValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3717
    :pswitch_6c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3720
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getEQMidQValue(I)I

    move-result p1

    .line 3721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3722
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3713
    :pswitch_6d
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setEQBassQValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3703
    :pswitch_6e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3705
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3706
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getEQBassQValue(I)I

    move-result p1

    .line 3707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3708
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3699
    :pswitch_6f
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setEQTrebleAndValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3695
    :pswitch_70
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setEQTrebleValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3691
    :pswitch_71
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setEQTreble$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3687
    :pswitch_72
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setEQMidAndValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3683
    :pswitch_73
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setEQMidValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3679
    :pswitch_74
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setEQMid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3675
    :pswitch_75
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setEQBassAndValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3671
    :pswitch_76
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setEQBassValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3667
    :pswitch_77
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setEQBass$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3658
    :pswitch_78
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3661
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setSoundMixScale(I)V

    .line 3662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3650
    :pswitch_79
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3651
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getSoundMixScale()I

    move-result p1

    .line 3652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3653
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3640
    :pswitch_7a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3642
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3643
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getEQTrebleValue(I)I

    move-result p1

    .line 3644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3645
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3630
    :pswitch_7b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3632
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3633
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getEQTreble(I)I

    move-result p1

    .line 3634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3635
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3620
    :pswitch_7c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3623
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getEQMidValue(I)I

    move-result p1

    .line 3624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3625
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3610
    :pswitch_7d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3613
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getEQMid(I)I

    move-result p1

    .line 3614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3615
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3600
    :pswitch_7e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3602
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3603
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getEQBassValue(I)I

    move-result p1

    .line 3604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3605
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3590
    :pswitch_7f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3593
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getEQBass(I)I

    move-result p1

    .line 3594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3595
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3581
    :pswitch_80
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3584
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setEQType(I)V

    .line 3585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3573
    :pswitch_81
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3574
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getEQType()I

    move-result p1

    .line 3575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3576
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3564
    :pswitch_82
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    .line 3567
    :cond_6
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setLoudness(Z)V

    .line 3568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3556
    :pswitch_83
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3557
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getLoudness()Z

    move-result p1

    .line 3558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3559
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3547
    :pswitch_84
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3550
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setSubWGain(I)V

    .line 3551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3539
    :pswitch_85
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3540
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getSubWGain()I

    move-result p1

    .line 3541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3542
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3535
    :pswitch_86
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setFadeBalance$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3527
    :pswitch_87
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3528
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFadeBalanceRR()I

    move-result p1

    .line 3529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3530
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3519
    :pswitch_88
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3520
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFadeBalanceRL()I

    move-result p1

    .line 3521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3522
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3511
    :pswitch_89
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3512
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFadeBalanceFR()I

    move-result p1

    .line 3513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3514
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3503
    :pswitch_8a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3504
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFadeBalanceFL()I

    move-result p1

    .line 3505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3506
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3495
    :pswitch_8b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3496
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDVDTestCount()I

    move-result p1

    .line 3497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3498
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3486
    :pswitch_8c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3489
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->SetBTMic(I)V

    .line 3490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3478
    :pswitch_8d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3479
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getBTMic()I

    move-result p1

    .line 3480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3481
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3469
    :pswitch_8e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v0, v1

    .line 3472
    :cond_7
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryLoadDefault(Z)V

    .line 3473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3460
    :pswitch_8f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v0, v1

    .line 3463
    :cond_8
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryTFTMotorteststart(Z)V

    .line 3464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3451
    :pswitch_90
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    move v0, v1

    .line 3454
    :cond_9
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactorySystemMechaback(Z)V

    .line 3455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3443
    :pswitch_91
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3444
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactorySystemMechaback()Z

    move-result p1

    .line 3445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3446
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3434
    :pswitch_92
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    move v0, v1

    .line 3437
    :cond_a
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactorySystemBrakeoverride(Z)V

    .line 3438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3426
    :pswitch_93
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3427
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactorySystemBrakeoverride()Z

    move-result p1

    .line 3428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3429
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3417
    :pswitch_94
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    move v0, v1

    .line 3420
    :cond_b
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactorySystemAutodimmerfunc(Z)V

    .line 3421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3409
    :pswitch_95
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3410
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactorySystemAutodimmerfunc()Z

    move-result p1

    .line 3411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3412
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3401
    :pswitch_96
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3402
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryT8AVOUT_Display()I

    move-result p1

    .line 3403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3404
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3392
    :pswitch_97
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3395
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryT8AVOUT_Display(I)V

    .line 3396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3383
    :pswitch_98
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3386
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryDtvModule(I)V

    .line 3387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3375
    :pswitch_99
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3376
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryDtvModule()I

    move-result p1

    .line 3377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3378
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3366
    :pswitch_9a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3369
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryBtModule(I)V

    .line 3370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3358
    :pswitch_9b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3359
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getScreenreverse()Z

    move-result p1

    .line 3360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3361
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3349
    :pswitch_9c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    move v0, v1

    .line 3352
    :cond_c
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setScreenreverse(Z)V

    .line 3353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3340
    :pswitch_9d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3343
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryCanType(I)V

    .line 3344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3332
    :pswitch_9e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3333
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryCanType()I

    move-result p1

    .line 3334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3335
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3323
    :pswitch_9f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3326
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactorySystemTVArea(I)V

    .line 3327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3315
    :pswitch_a0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3316
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactorySystemTVArea()I

    move-result p1

    .line 3317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3318
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3306
    :pswitch_a1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3309
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactorySystemRegioncode(I)V

    .line 3310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3298
    :pswitch_a2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3299
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactorySystemRegioncode()I

    move-result p1

    .line 3300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3301
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3289
    :pswitch_a3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3292
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryAMDistant(I)V

    .line 3293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3281
    :pswitch_a4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3282
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryAMDistant()I

    move-result p1

    .line 3283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3284
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3272
    :pswitch_a5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3275
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryAMLocal(I)V

    .line 3276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3264
    :pswitch_a6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3265
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryAMLocal()I

    move-result p1

    .line 3266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3267
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3255
    :pswitch_a7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3258
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryFMDistant(I)V

    .line 3259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3247
    :pswitch_a8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3248
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryFMDistant()I

    move-result p1

    .line 3249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3250
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3238
    :pswitch_a9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3241
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryFMLocal(I)V

    .line 3242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3230
    :pswitch_aa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3231
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryFMLocal()I

    move-result p1

    .line 3232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3221
    :pswitch_ab
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3224
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryRDSType(I)V

    .line 3225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3213
    :pswitch_ac
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3214
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryRDSType()I

    move-result p1

    .line 3215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3216
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3204
    :pswitch_ad
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3207
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryRadioModel(I)V

    .line 3208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3196
    :pswitch_ae
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3197
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryRadioModel()I

    move-result p1

    .line 3198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3187
    :pswitch_af
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3190
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryRadioArea(I)V

    .line 3191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3179
    :pswitch_b0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3180
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryRadioArea()I

    move-result p1

    .line 3181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3182
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3170
    :pswitch_b1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    move v0, v1

    .line 3173
    :cond_d
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setKeyDebug(Z)V

    .line 3174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3161
    :pswitch_b2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    move v0, v1

    .line 3164
    :cond_e
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setDvdClearCounter(Z)V

    .line 3165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3152
    :pswitch_b3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    move v0, v1

    .line 3155
    :cond_f
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setDvdServoLoaderStart(Z)V

    .line 3156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3143
    :pswitch_b4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3146
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setAV2Gain(I)V

    .line 3147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3135
    :pswitch_b5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3136
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getAV2Gain()I

    move-result p1

    .line 3137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3126
    :pswitch_b6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3129
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setAV1Gain(I)V

    .line 3130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3118
    :pswitch_b7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3119
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getAV1Gain()I

    move-result p1

    .line 3120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3121
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3109
    :pswitch_b8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    move v0, v1

    .line 3112
    :cond_10
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setParking(Z)V

    .line 3113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3101
    :pswitch_b9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3102
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getParking()Z

    move-result p1

    .line 3103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3104
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3092
    :pswitch_ba
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3094
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3095
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setBTGain(I)V

    .line 3096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3084
    :pswitch_bb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getBTGain()I

    move-result p1

    .line 3086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3087
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3075
    :pswitch_bc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3077
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3078
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setRadioGain(I)V

    .line 3079
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3067
    :pswitch_bd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3068
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getRadioGain()I

    move-result p1

    .line 3069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3070
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3058
    :pswitch_be
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3060
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3061
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setDVDGain(I)V

    .line 3062
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3050
    :pswitch_bf
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3051
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDVDGain()I

    move-result p1

    .line 3052
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3053
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3041
    :pswitch_c0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3043
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3044
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setDabGain(I)V

    .line 3045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3033
    :pswitch_c1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3034
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDabGain()I

    move-result p1

    .line 3035
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3036
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3024
    :pswitch_c2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3026
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3027
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setXmGain(I)V

    .line 3028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 3016
    :pswitch_c3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3017
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getXmGain()I

    move-result p1

    .line 3018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3019
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 3007
    :pswitch_c4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3009
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3010
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setDvbtGain(I)V

    .line 3011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2999
    :pswitch_c5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3000
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDvbtGain()I

    move-result p1

    .line 3001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3002
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2990
    :pswitch_c6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2992
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2993
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCmmbGain(I)V

    .line 2994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2982
    :pswitch_c7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2983
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCmmbGain()I

    move-result p1

    .line 2984
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2985
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2973
    :pswitch_c8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2975
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2976
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setChildrenLockLevel(I)V

    .line 2977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2965
    :pswitch_c9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2966
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getChildrenLockLevel()I

    move-result p1

    .line 2967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2968
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2956
    :pswitch_ca
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2958
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2959
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setChildrenLockLevelState(I)V

    .line 2960
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2948
    :pswitch_cb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2949
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getChildrenLockLevelState()I

    move-result p1

    .line 2950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2951
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2939
    :pswitch_cc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2941
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2942
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setChildrenLockPassword(Ljava/lang/String;)V

    .line 2943
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2931
    :pswitch_cd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getChildrenLockPassword()Ljava/lang/String;

    move-result-object p1

    .line 2933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2934
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2922
    :pswitch_ce
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2924
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2925
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setDiscMenu(Ljava/lang/String;)V

    .line 2926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2914
    :pswitch_cf
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2915
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDiscMenu()Ljava/lang/String;

    move-result-object p1

    .line 2916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2917
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2905
    :pswitch_d0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2907
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2908
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setDVDSubTitle(Ljava/lang/String;)V

    .line 2909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2897
    :pswitch_d1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2898
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDVDSubTitle()Ljava/lang/String;

    move-result-object p1

    .line 2899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2900
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2888
    :pswitch_d2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2890
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2891
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setDVDAudio(Ljava/lang/String;)V

    .line 2892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2880
    :pswitch_d3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2881
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDVDAudio()Ljava/lang/String;

    move-result-object p1

    .line 2882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2883
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2871
    :pswitch_d4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2873
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2874
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setSubWFilter(I)V

    .line 2875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2863
    :pswitch_d5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2864
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getSubWFilter()I

    move-result p1

    .line 2865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2866
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2854
    :pswitch_d6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2856
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11

    move v0, v1

    .line 2857
    :cond_11
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setSubSwitch(Z)V

    .line 2858
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2846
    :pswitch_d7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2847
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getSubSwitch()Z

    move-result p1

    .line 2848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2849
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2838
    :pswitch_d8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCanVersionInfo()Ljava/lang/String;

    move-result-object p1

    .line 2840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2841
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2829
    :pswitch_d9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2831
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2832
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactoryPanelType(I)V

    .line 2833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2821
    :pswitch_da
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2822
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFactoryPanelType()I

    move-result p1

    .line 2823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2824
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2812
    :pswitch_db
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12

    move v0, v1

    .line 2815
    :cond_12
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setRadioRange(Z)V

    .line 2816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2804
    :pswitch_dc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2805
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getRadioRange()Z

    move-result p1

    .line 2806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2807
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2795
    :pswitch_dd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2798
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCurrentArea(I)V

    .line 2799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2787
    :pswitch_de
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2788
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCurrentArea()I

    move-result p1

    .line 2789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2790
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2778
    :pswitch_df
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2780
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_13

    move v0, v1

    .line 2781
    :cond_13
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setHourMode(Z)V

    .line 2782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2770
    :pswitch_e0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2771
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getHourMode()Z

    move-result p1

    .line 2772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2773
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2761
    :pswitch_e1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_14

    move v0, v1

    .line 2764
    :cond_14
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setBeep(Z)V

    .line 2765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2753
    :pswitch_e2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2754
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getBeep()Z

    move-result p1

    .line 2755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2756
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2744
    :pswitch_e3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2746
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2747
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setNavigationModule(I)V

    .line 2748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2736
    :pswitch_e4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2737
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getNavigationModule()I

    move-result p1

    .line 2738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2739
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2727
    :pswitch_e5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2729
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2730
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setBlackOut(I)V

    .line 2731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2719
    :pswitch_e6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2720
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getBlackOut()I

    move-result p1

    .line 2721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2722
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2710
    :pswitch_e7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2713
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setKeyColor(I)V

    .line 2714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2702
    :pswitch_e8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2703
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getKeyColor()I

    move-result p1

    .line 2704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2705
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2693
    :pswitch_e9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2696
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCameraMode(I)V

    .line 2697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2685
    :pswitch_ea
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2686
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCameraMode()I

    move-result p1

    .line 2687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2688
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2676
    :pswitch_eb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2679
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFrontCameraMode(I)V

    .line 2680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2668
    :pswitch_ec
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getFrontCameraMode()I

    move-result p1

    .line 2670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2671
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2659
    :pswitch_ed
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2661
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 2662
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->reporTestMcuInfor([B)V

    .line 2663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2650
    :pswitch_ee
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2652
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 2653
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->reportCanbusUpdData([B)V

    .line 2654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2639
    :pswitch_ef
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2641
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 2643
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 2644
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->reportCanbusInfoOther(B[B)V

    .line 2645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2630
    :pswitch_f0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2632
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 2633
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->reportCanbusInfo([B)V

    .line 2634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2621
    :pswitch_f1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2623
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 2624
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->reqMcuKey([B)V

    .line 2625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2612
    :pswitch_f2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 2615
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->reqCanbusInfo([B)V

    .line 2616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2605
    :pswitch_f3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->reqMotorInfo()V

    .line 2607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2597
    :pswitch_f4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getMotorInfo()[B

    move-result-object p1

    .line 2599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2600
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 2586
    :pswitch_f5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2590
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 2591
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setBgLigtSettingInfo(I[B)V

    .line 2592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2578
    :pswitch_f6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2579
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getBgLigtSettingInfo()[B

    move-result-object p1

    .line 2580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2581
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 2569
    :pswitch_f7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2572
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCarLogoIndex(I)V

    .line 2573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2561
    :pswitch_f8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2562
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCarLogoIndex()I

    move-result p1

    .line 2563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2564
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2553
    :pswitch_f9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2554
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getVolumeValue()I

    move-result p1

    .line 2555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2556
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2544
    :pswitch_fa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2547
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setBrightness(I)V

    .line 2548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2536
    :pswitch_fb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2537
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getBrightness()I

    move-result p1

    .line 2538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2539
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2527
    :pswitch_fc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2530
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setTVOutGain(I)V

    .line 2531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2519
    :pswitch_fd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getTVOutGain()I

    move-result p1

    .line 2521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2522
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2510
    :pswitch_fe
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2513
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setVideoOutGain(I)V

    .line 2514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2502
    :pswitch_ff
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2503
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getVideoOutGain()I

    move-result p1

    .line 2504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2505
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2493
    :pswitch_100
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2496
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCameraOutGain(I)V

    .line 2497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2485
    :pswitch_101
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2486
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCameraOutGain()I

    move-result p1

    .line 2487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2488
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2476
    :pswitch_102
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2479
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setVideoOutput(I)V

    .line 2480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2468
    :pswitch_103
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2469
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getVideoOutput()I

    move-result p1

    .line 2470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2471
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2459
    :pswitch_104
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2462
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setVideoInput(I)V

    .line 2463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2451
    :pswitch_105
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2452
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getVideoInput()I

    move-result p1

    .line 2453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2454
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2447
    :pswitch_106
    invoke-direct {p0, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->onTransact$setDateTime$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 2438
    :pswitch_107
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_15

    move v0, v1

    .line 2441
    :cond_15
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->enableRDSSyncSwitch(Z)V

    .line 2442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2430
    :pswitch_108
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2431
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getRDSSyncSwitch()Z

    move-result p1

    .line 2432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2421
    :pswitch_109
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_16

    move v0, v1

    .line 2424
    :cond_16
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setPowerKeySwitch(Z)V

    .line 2425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2413
    :pswitch_10a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2414
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getPowerKeySwitch()Z

    move-result p1

    .line 2415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2416
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2404
    :pswitch_10b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17

    move v0, v1

    .line 2407
    :cond_17
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setPanoramicCameraSwitch(Z)V

    .line 2408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2396
    :pswitch_10c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2397
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getPanoramicCameraSwitch()Z

    move-result p1

    .line 2398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2399
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2387
    :pswitch_10d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_18

    move v0, v1

    .line 2390
    :cond_18
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setReversingBaseline(Z)V

    .line 2391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2379
    :pswitch_10e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getReversingBaseline()Z

    move-result p1

    .line 2381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2382
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2370
    :pswitch_10f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_19

    move v0, v1

    .line 2373
    :cond_19
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setReversingMute(Z)V

    .line 2374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2362
    :pswitch_110
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2363
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getReversingMute()Z

    move-result p1

    .line 2364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2365
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2353
    :pswitch_111
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1a

    move v0, v1

    .line 2356
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setReversingTrackSwitch(Z)V

    .line 2357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2345
    :pswitch_112
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getReversingTrackSwitch()Z

    move-result p1

    .line 2347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2348
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2336
    :pswitch_113
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1b

    move v0, v1

    .line 2339
    :cond_1b
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setHeadlightSwitch(Z)V

    .line 2340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2328
    :pswitch_114
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2329
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getHeadlightSwitch()Z

    move-result p1

    .line 2330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2331
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2319
    :pswitch_115
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1c

    move v0, v1

    .line 2322
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->enableGPSSyncSwitch(Z)V

    .line 2323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2311
    :pswitch_116
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2312
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getGPSSyncSwitch()Z

    move-result p1

    .line 2313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2314
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2302
    :pswitch_117
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1d

    move v0, v1

    .line 2305
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->enableFactoryReset(Z)V

    .line 2306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2293
    :pswitch_118
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2295
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 2296
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->resetMpuDelay(B)V

    .line 2297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2286
    :pswitch_119
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->playBeep()V

    .line 2288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2277
    :pswitch_11a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2279
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 2280
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setFactorySettingInfoToMcu([B)V

    .line 2281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2270
    :pswitch_11b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2271
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setSharedValueToMpu()V

    .line 2272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2259
    :pswitch_11c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2264
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setSharedStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2248
    :pswitch_11d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1e

    move v0, v1

    .line 2253
    :cond_1e
    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setSharedBool(Ljava/lang/String;Z)V

    .line 2254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2237
    :pswitch_11e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 2242
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setSharedInt(Ljava/lang/String;I)V

    .line 2243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2227
    :pswitch_11f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2230
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2232
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2217
    :pswitch_120
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2220
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getSharedBool(Ljava/lang/String;)Z

    move-result p1

    .line 2221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2222
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2207
    :pswitch_121
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2210
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getSharedInt(Ljava/lang/String;)I

    move-result p1

    .line 2211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2212
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2197
    :pswitch_122
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2199
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 2200
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getMcuTestItem([B)[B

    move-result-object p1

    .line 2201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2202
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 2189
    :pswitch_123
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2190
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDgcMCUVersion()Ljava/lang/String;

    move-result-object p1

    .line 2191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2192
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2181
    :pswitch_124
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2182
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getMCUVersion()Ljava/lang/String;

    move-result-object p1

    .line 2183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2184
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2172
    :pswitch_125
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2175
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setCustomerID(Ljava/lang/String;)V

    .line 2176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2164
    :pswitch_126
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2165
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getCustomerID()Ljava/lang/String;

    move-result-object p1

    .line 2166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2167
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2155
    :pswitch_127
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2158
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->unRegisterCallBack(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2145
    :pswitch_128
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;

    move-result-object p1

    .line 2148
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;)Ljava/lang/String;

    move-result-object p1

    .line 2149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2150
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 2136
    :pswitch_129
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1f

    move v0, v1

    .line 2139
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->setIsSoundMix(Z)V

    .line 2140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 2128
    :pswitch_12a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getIsSoundMix()Z

    move-result p1

    .line 2130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2131
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 2123
    :cond_20
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
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
