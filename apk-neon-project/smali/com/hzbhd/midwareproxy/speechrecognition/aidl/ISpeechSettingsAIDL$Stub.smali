.class public abstract Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;
.super Landroid/os/Binder;
.source "ISpeechSettingsAIDL.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

.field static final TRANSACTION_ContinuePlaying:I = 0xf

.field static final TRANSACTION_PausePlayBack:I = 0x10

.field static final TRANSACTION_actionControl:I = 0x4f

.field static final TRANSACTION_addCallBack:I = 0x1

.field static final TRANSACTION_backToHome:I = 0x23

.field static final TRANSACTION_brightnessDown:I = 0x25

.field static final TRANSACTION_brightnessMax:I = 0x28

.field static final TRANSACTION_brightnessMin:I = 0x29

.field static final TRANSACTION_brightnessTo:I = 0x27

.field static final TRANSACTION_brightnessUp:I = 0x26

.field static final TRANSACTION_btAnswer:I = 0x18

.field static final TRANSACTION_btCallNumber:I = 0x1a

.field static final TRANSACTION_btHangUp:I = 0x19

.field static final TRANSACTION_btSyncContacts:I = 0x1b

.field static final TRANSACTION_closeAcPower:I = 0x3f

.field static final TRANSACTION_closeApp:I = 0x3

.field static final TRANSACTION_closeBodaApp:I = 0x8

.field static final TRANSACTION_closeHotspot:I = 0x38

.field static final TRANSACTION_closeNavi:I = 0x6

.field static final TRANSACTION_closeWifi:I = 0x36

.field static final TRANSACTION_getAcTemperatureLevel:I = 0x4b

.field static final TRANSACTION_getAcWindLevel:I = 0x45

.field static final TRANSACTION_getAccStatus:I = 0x21

.field static final TRANSACTION_getBackingStatus:I = 0x22

.field static final TRANSACTION_getBrighrnessStatus:I = 0x2a

.field static final TRANSACTION_getBtConnectedDeviceAddress:I = 0x1e

.field static final TRANSACTION_getBtConnectedDevieName:I = 0x1f

.field static final TRANSACTION_getBtContactList:I = 0x1c

.field static final TRANSACTION_getBtName:I = 0x20

.field static final TRANSACTION_getBtStatus:I = 0x1d

.field static final TRANSACTION_getCurrentApp:I = 0x9

.field static final TRANSACTION_getCurrentSource:I = 0x3b

.field static final TRANSACTION_getDeviveInfo:I = 0x52

.field static final TRANSACTION_getSerialNumber:I = 0x3d

.field static final TRANSACTION_getVolumeStatus:I = 0x34

.field static final TRANSACTION_goBack:I = 0x24

.field static final TRANSACTION_musicPlayPath:I = 0x54

.field static final TRANSACTION_nextStation:I = 0xb

.field static final TRANSACTION_nextTrack:I = 0xd

.field static final TRANSACTION_openAcPower:I = 0x3e

.field static final TRANSACTION_openApp:I = 0x4

.field static final TRANSACTION_openBodaApp:I = 0x7

.field static final TRANSACTION_openHotspot:I = 0x37

.field static final TRANSACTION_openNavi:I = 0x5

.field static final TRANSACTION_openWifi:I = 0x35

.field static final TRANSACTION_previouStation:I = 0xc

.field static final TRANSACTION_previousTrack:I = 0xe

.field static final TRANSACTION_putspeakEnd:I = 0x51

.field static final TRANSACTION_radioBand:I = 0x14

.field static final TRANSACTION_radioSearch:I = 0x13

.field static final TRANSACTION_radioToAM:I = 0x16

.field static final TRANSACTION_radioToFM:I = 0x15

.field static final TRANSACTION_radioToFreq:I = 0x17

.field static final TRANSACTION_releaseSource:I = 0x3a

.field static final TRANSACTION_removeCallBack:I = 0x2

.field static final TRANSACTION_requestSource:I = 0x39

.field static final TRANSACTION_rotateScreen:I = 0x3c

.field static final TRANSACTION_screenOff:I = 0x2b

.field static final TRANSACTION_screenOn:I = 0x2c

.field static final TRANSACTION_searchBack:I = 0x11

.field static final TRANSACTION_searchForward:I = 0x12

.field static final TRANSACTION_setAcHeating:I = 0x4d

.field static final TRANSACTION_setAcRefrigeration:I = 0x4c

.field static final TRANSACTION_setAcTemperature:I = 0x53

.field static final TRANSACTION_setAcTemperatureDown:I = 0x47

.field static final TRANSACTION_setAcTemperatureMax:I = 0x49

.field static final TRANSACTION_setAcTemperatureMin:I = 0x4a

.field static final TRANSACTION_setAcTemperatureTo:I = 0x48

.field static final TRANSACTION_setAcTemperatureToPro:I = 0x50

.field static final TRANSACTION_setAcTemperatureUp:I = 0x46

.field static final TRANSACTION_setAcWinMax:I = 0x43

.field static final TRANSACTION_setAcWindDown:I = 0x41

.field static final TRANSACTION_setAcWindTo:I = 0x42

.field static final TRANSACTION_setAcWindUp:I = 0x40

.field static final TRANSACTION_setAcdWindMin:I = 0x44

.field static final TRANSACTION_switchAcMode:I = 0x4e

.field static final TRANSACTION_switchMode:I = 0xa

.field static final TRANSACTION_volumeDown:I = 0x2d

.field static final TRANSACTION_volumeMax:I = 0x30

.field static final TRANSACTION_volumeMin:I = 0x31

.field static final TRANSACTION_volumeMute:I = 0x32

.field static final TRANSACTION_volumeTo:I = 0x2f

.field static final TRANSACTION_volumeUnmute:I = 0x33

.field static final TRANSACTION_volumeUp:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 452
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 453
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    .line 464
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 465
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    if-eqz v1, :cond_1

    .line 466
    check-cast v0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    return-object v0

    .line 468
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;
    .locals 1

    .line 2968
    sget-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;)Z
    .locals 1

    .line 2961
    sget-object v0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2962
    sput-object p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL;

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

    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.ISpeechSettingsAIDL"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1120
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1123
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->musicPlayPath(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1107
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1114
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcTemperature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1099
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getDeviveInfo()Ljava/lang/String;

    move-result-object p1

    .line 1101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1092
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->putspeakEnd()V

    .line 1094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1081
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1086
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcTemperatureToPro(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1072
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1075
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->actionControl(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1065
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->switchAcMode()V

    .line 1067
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1058
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcHeating()V

    .line 1060
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1051
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcRefrigeration()V

    .line 1053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1043
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getAcTemperatureLevel()Ljava/lang/String;

    move-result-object p1

    .line 1045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1036
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcTemperatureMin()V

    .line 1038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1029
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcTemperatureMax()V

    .line 1031
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1020
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 1023
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcTemperatureTo(F)V

    .line 1024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1013
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcTemperatureDown()V

    .line 1015
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1006
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcTemperatureUp()V

    .line 1008
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 998
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getAcWindLevel()Ljava/lang/String;

    move-result-object p1

    .line 1000
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 991
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcdWindMin()V

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 984
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcWinMax()V

    .line 986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 975
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 978
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcWindTo(I)V

    .line 979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 968
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcWindDown()V

    .line 970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 961
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->setAcWindUp()V

    .line 963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 954
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->closeAcPower()V

    .line 956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 947
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->openAcPower()V

    .line 949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 939
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 932
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->rotateScreen()V

    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 924
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getCurrentSource()Ljava/lang/String;

    move-result-object p1

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 917
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->releaseSource()V

    .line 919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 910
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->requestSource()V

    .line 912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 903
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->closeHotspot()V

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 896
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->openHotspot()V

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 889
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->closeWifi()V

    .line 891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 882
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->openWifi()V

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 874
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getVolumeStatus()Ljava/lang/String;

    move-result-object p1

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 867
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->volumeUnmute()V

    .line 869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 860
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->volumeMute()V

    .line 862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 853
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->volumeMin()V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 846
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->volumeMax()V

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 837
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 840
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->volumeTo(I)V

    .line 841
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 830
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->volumeUp()V

    .line 832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 823
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->volumeDown()V

    .line 825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 816
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->screenOn()V

    .line 818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 809
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->screenOff()V

    .line 811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 801
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getBrighrnessStatus()Ljava/lang/String;

    move-result-object p1

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 794
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->brightnessMin()V

    .line 796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 787
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->brightnessMax()V

    .line 789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 778
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 781
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->brightnessTo(I)V

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 771
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->brightnessUp()V

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 764
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->brightnessDown()V

    .line 766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 757
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->goBack()V

    .line 759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 750
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->backToHome()V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 742
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getBackingStatus()Ljava/lang/String;

    move-result-object p1

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 734
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getAccStatus()Ljava/lang/String;

    move-result-object p1

    .line 736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 726
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getBtName()Ljava/lang/String;

    move-result-object p1

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 718
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getBtConnectedDevieName()Ljava/lang/String;

    move-result-object p1

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 710
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getBtConnectedDeviceAddress()Ljava/lang/String;

    move-result-object p1

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 702
    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getBtStatus()Ljava/lang/String;

    move-result-object p1

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 694
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getBtContactList()Ljava/lang/String;

    move-result-object p1

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 687
    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->btSyncContacts()V

    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 678
    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 681
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->btCallNumber(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 671
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->btHangUp()V

    .line 673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 664
    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->btAnswer()V

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 655
    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 658
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->radioToFreq(F)V

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 648
    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->radioToAM()V

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 641
    :pswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->radioToFM()V

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 634
    :pswitch_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->radioBand()V

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 627
    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->radioSearch()V

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 620
    :pswitch_42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->searchForward()V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 613
    :pswitch_43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->searchBack()V

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 606
    :pswitch_44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->PausePlayBack()V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 599
    :pswitch_45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->ContinuePlaying()V

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 592
    :pswitch_46
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->previousTrack()V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 585
    :pswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->nextTrack()V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 578
    :pswitch_48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->previouStation()V

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 571
    :pswitch_49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->nextStation()V

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 564
    :pswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->switchMode()V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 556
    :pswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->getCurrentApp()Ljava/lang/String;

    move-result-object p1

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 547
    :pswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 550
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->closeBodaApp(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 538
    :pswitch_4d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->openBodaApp(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 531
    :pswitch_4e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->closeNavi()V

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 524
    :pswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->openNavi()V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 513
    :pswitch_50
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->openApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 504
    :pswitch_51
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->closeApp(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 495
    :pswitch_52
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;

    move-result-object p1

    .line 498
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->removeCallBack(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;)V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 486
    :pswitch_53
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;

    move-result-object p1

    .line 489
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechSettingsAIDL$Stub;->addCallBack(Lcom/hzbhd/midwareproxy/speechrecognition/aidl/ISpeechCallback;)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 481
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
