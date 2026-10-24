.class public abstract Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;
.super Landroid/os/Binder;
.source "IRadioManager.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

.field static final TRANSACTION_autoSearch:I = 0x15

.field static final TRANSACTION_autoSearchWithPreview:I = 0x16

.field static final TRANSACTION_bandAmChange:I = 0x69

.field static final TRANSACTION_bandChange:I = 0x2a

.field static final TRANSACTION_bandFmChange:I = 0x68

.field static final TRANSACTION_changNextStation:I = 0x5e

.field static final TRANSACTION_changPreStation:I = 0x5f

.field static final TRANSACTION_changeBandAm1:I = 0x6d

.field static final TRANSACTION_changeBandAm2:I = 0x6e

.field static final TRANSACTION_changeBandFm1:I = 0x6a

.field static final TRANSACTION_changeBandFm2:I = 0x6b

.field static final TRANSACTION_changeBandFm3:I = 0x6c

.field static final TRANSACTION_dabNext:I = 0x62

.field static final TRANSACTION_dabPowerState:I = 0x67

.field static final TRANSACTION_dabPre:I = 0x60

.field static final TRANSACTION_dabScan:I = 0x61

.field static final TRANSACTION_dabSelFreq:I = 0x65

.field static final TRANSACTION_dabSelPre:I = 0x63

.field static final TRANSACTION_dabSelService:I = 0x66

.field static final TRANSACTION_enableAFSwitch:I = 0x3d

.field static final TRANSACTION_enableCTSwitch:I = 0x41

.field static final TRANSACTION_enableEONSwitch:I = 0x3f

.field static final TRANSACTION_enablePSSwitch:I = 0x47

.field static final TRANSACTION_enablePTYSwitch:I = 0x45

.field static final TRANSACTION_enableRDSSwitch:I = 0x39

.field static final TRANSACTION_enableRegionSwitch:I = 0x43

.field static final TRANSACTION_enableTASwitch:I = 0x3b

.field static final TRANSACTION_forceMonoSwitch:I = 0x5b

.field static final TRANSACTION_getAFSeekStatus:I = 0xe

.field static final TRANSACTION_getAFSwitchStatus:I = 0x3e

.field static final TRANSACTION_getAutoSearchStatus:I = 0x8

.field static final TRANSACTION_getAutoSearchWithPreviewStatus:I = 0xb

.field static final TRANSACTION_getCTSwitchStatus:I = 0x42

.field static final TRANSACTION_getCurPSInfo:I = 0x5

.field static final TRANSACTION_getCurPTYInfo:I = 0x6

.field static final TRANSACTION_getCurRTInfo:I = 0x7

.field static final TRANSACTION_getCurrPresetFreq:I = 0x36

.field static final TRANSACTION_getCurrentArea:I = 0x22

.field static final TRANSACTION_getCurrentBand:I = 0x1a

.field static final TRANSACTION_getCurrentFreq:I = 0x1f

.field static final TRANSACTION_getDefaultArea:I = 0x24

.field static final TRANSACTION_getEONStatus:I = 0x14

.field static final TRANSACTION_getEONSwitchStatus:I = 0x40

.field static final TRANSACTION_getEWSStatus:I = 0x13

.field static final TRANSACTION_getPSSwitchStatus:I = 0x48

.field static final TRANSACTION_getPTYSeekStatus:I = 0x10

.field static final TRANSACTION_getPTYSwitchStatus:I = 0x46

.field static final TRANSACTION_getPresetFreqList:I = 0x31

.field static final TRANSACTION_getPresetFreqListCount:I = 0x30

.field static final TRANSACTION_getPresetFreqPSList:I = 0x33

.field static final TRANSACTION_getPresetListPSInfo:I = 0x35

.field static final TRANSACTION_getPresetPSName:I = 0x34

.field static final TRANSACTION_getRDSSwitchStatus:I = 0x3a

.field static final TRANSACTION_getRDSType:I = 0x53

.field static final TRANSACTION_getRFInputMode:I = 0x1d

.field static final TRANSACTION_getRegionSwitchStatus:I = 0x44

.field static final TRANSACTION_getSeekDownStatus:I = 0xa

.field static final TRANSACTION_getSeekUpStatus:I = 0x9

.field static final TRANSACTION_getSignalStrength:I = 0x2

.field static final TRANSACTION_getStepDownStatus:I = 0xd

.field static final TRANSACTION_getStepUpStatus:I = 0xc

.field static final TRANSACTION_getStereoStatus:I = 0x5d

.field static final TRANSACTION_getSupportForceMono:I = 0x5c

.field static final TRANSACTION_getTASeekStatus:I = 0x11

.field static final TRANSACTION_getTAStatus:I = 0x12

.field static final TRANSACTION_getTASwitchStatus:I = 0x3c

.field static final TRANSACTION_getTAVolume:I = 0x4b

.field static final TRANSACTION_getTAVolume_After:I = 0x4f

.field static final TRANSACTION_getTAVolume_Before:I = 0x4d

.field static final TRANSACTION_getTPSeekStatus:I = 0xf

.field static final TRANSACTION_getTunerModel:I = 0x2d

.field static final TRANSACTION_getValidFreqList:I = 0x2f

.field static final TRANSACTION_getValidFreqListCount:I = 0x2e

.field static final TRANSACTION_getVoiceChannelType:I = 0x1

.field static final TRANSACTION_initRadioData:I = 0x58

.field static final TRANSACTION_isMute6686:I = 0x50

.field static final TRANSACTION_isRDSStation:I = 0x4

.field static final TRANSACTION_isTP:I = 0x3

.field static final TRANSACTION_isValidFreq:I = 0x20

.field static final TRANSACTION_mute6686:I = 0x6f

.field static final TRANSACTION_playPresetFreq:I = 0x29

.field static final TRANSACTION_removeRDSInfoChangeListener:I = 0x57

.field static final TRANSACTION_removeRadioInfoChangeListener:I = 0x55

.field static final TRANSACTION_restoreFactorySettings:I = 0x38

.field static final TRANSACTION_saveAppdata:I = 0x59

.field static final TRANSACTION_searchSpecialRDSProgram:I = 0x52

.field static final TRANSACTION_searchStepDown:I = 0x19

.field static final TRANSACTION_searchStepUp:I = 0x18

.field static final TRANSACTION_seekDown:I = 0x28

.field static final TRANSACTION_seekUp:I = 0x27

.field static final TRANSACTION_sendAppdata:I = 0x5a

.field static final TRANSACTION_setCurrPresetFreq:I = 0x37

.field static final TRANSACTION_setCurrentArea:I = 0x21

.field static final TRANSACTION_setCurrentBand:I = 0x1b

.field static final TRANSACTION_setCurrentFreq:I = 0x1e

.field static final TRANSACTION_setDefaultArea:I = 0x23

.field static final TRANSACTION_setPresetFreqList:I = 0x32

.field static final TRANSACTION_setRDSAFLevel:I = 0x51

.field static final TRANSACTION_setRDSInfoChangeListener:I = 0x56

.field static final TRANSACTION_setRDSType:I = 0x49

.field static final TRANSACTION_setRFInputMode:I = 0x1c

.field static final TRANSACTION_setRadioInfoChangeListener:I = 0x54

.field static final TRANSACTION_setTAVolume:I = 0x4a

.field static final TRANSACTION_setTAVolume_After:I = 0x4e

.field static final TRANSACTION_setTAVolume_Before:I = 0x4c

.field static final TRANSACTION_setTunerReg:I = 0x2b

.field static final TRANSACTION_setTunerRegWithModel:I = 0x2c

.field static final TRANSACTION_stopSearch:I = 0x17

.field static final TRANSACTION_switchPowerState:I = 0x64

.field static final TRANSACTION_tuneDown:I = 0x26

.field static final TRANSACTION_tuneUp:I = 0x25


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 456
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 457
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 468
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 469
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    if-eqz v1, :cond_1

    .line 470
    check-cast v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    return-object v0

    .line 472
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;
    .locals 1

    .line 3821
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;)Z
    .locals 1

    .line 3814
    sget-object v0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 3815
    sput-object p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

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

    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    if-eq p1, v0, :cond_b

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1449
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1440
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 1443
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->mute6686(Z)V

    .line 1444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1433
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->changeBandAm2()V

    .line 1435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1426
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->changeBandAm1()V

    .line 1428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1419
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->changeBandFm3()V

    .line 1421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1412
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->changeBandFm2()V

    .line 1414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1405
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->changeBandFm1()V

    .line 1407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1398
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->bandAmChange()V

    .line 1400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1391
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->bandFmChange()V

    .line 1393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1382
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 1385
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->dabPowerState(Z)V

    .line 1386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1373
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1376
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->dabSelService(I)V

    .line 1377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1364
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1367
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->dabSelFreq(I)V

    .line 1368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1355
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 1358
    :cond_2
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->switchPowerState(Z)V

    .line 1359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1348
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->dabSelPre()V

    .line 1350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1341
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->dabNext()V

    .line 1343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1334
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->dabScan()V

    .line 1336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1327
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->dabPre()V

    .line 1329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1320
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->changPreStation()V

    .line 1322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1313
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->changNextStation()V

    .line 1315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1305
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getStereoStatus()I

    move-result p1

    .line 1307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1297
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getSupportForceMono()Z

    move-result p1

    .line 1299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1290
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->forceMonoSwitch()V

    .line 1292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1281
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1284
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->sendAppdata(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1272
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1275
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->saveAppdata(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1265
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->initRadioData()V

    .line 1267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1256
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object p1

    .line 1259
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->removeRDSInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;)V

    .line 1260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1247
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object p1

    .line 1250
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setRDSInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;)V

    .line 1251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1238
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object p1

    .line 1241
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->removeRadioInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;)V

    .line 1242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1229
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object p1

    .line 1232
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setRadioInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;)V

    .line 1233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1221
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getRDSType()Ljava/lang/String;

    move-result-object p1

    .line 1223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1211
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1214
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->searchSpecialRDSProgram(I)Z

    move-result p1

    .line 1215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1201
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1204
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setRDSAFLevel(B)Z

    move-result p1

    .line 1205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1193
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->isMute6686()Z

    move-result p1

    .line 1195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1185
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getTAVolume_After()I

    move-result p1

    .line 1187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1175
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1178
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setTAVolume_After(I)Z

    move-result p1

    .line 1179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1167
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getTAVolume_Before()I

    move-result p1

    .line 1169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1157
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1160
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setTAVolume_Before(I)Z

    move-result p1

    .line 1161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1149
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getTAVolume()I

    move-result p1

    .line 1151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1135
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1142
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setTAVolume(III)Z

    move-result p1

    .line 1143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1125
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1128
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setRDSType(B)Z

    move-result p1

    .line 1129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1117
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getPSSwitchStatus()Z

    move-result p1

    .line 1119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1107
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 1110
    :cond_3
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->enablePSSwitch(Z)Z

    move-result p1

    .line 1111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1099
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getPTYSwitchStatus()Z

    move-result p1

    .line 1101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1089
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 1092
    :cond_4
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->enablePTYSwitch(Z)Z

    move-result p1

    .line 1093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1081
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getRegionSwitchStatus()Z

    move-result p1

    .line 1083
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1071
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    .line 1074
    :cond_5
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->enableRegionSwitch(Z)Z

    move-result p1

    .line 1075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1063
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getCTSwitchStatus()Z

    move-result p1

    .line 1065
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1053
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    .line 1056
    :cond_6
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->enableCTSwitch(Z)Z

    move-result p1

    .line 1057
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1045
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getEONSwitchStatus()Z

    move-result p1

    .line 1047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1035
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v0, v1

    .line 1038
    :cond_7
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->enableEONSwitch(Z)Z

    move-result p1

    .line 1039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1027
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getAFSwitchStatus()Z

    move-result p1

    .line 1029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1017
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v0, v1

    .line 1020
    :cond_8
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->enableAFSwitch(Z)Z

    move-result p1

    .line 1021
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1009
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getTASwitchStatus()Z

    move-result p1

    .line 1011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 999
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    move v0, v1

    .line 1002
    :cond_9
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->enableTASwitch(Z)Z

    move-result p1

    .line 1003
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 991
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getRDSSwitchStatus()Z

    move-result p1

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 981
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    move v0, v1

    .line 984
    :cond_a
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->enableRDSSwitch(Z)Z

    move-result p1

    .line 985
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 973
    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->restoreFactorySettings()Z

    move-result p1

    .line 975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 963
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 966
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setCurrPresetFreq(I)Z

    move-result p1

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 953
    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 956
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getCurrPresetFreq(I)Ljava/lang/String;

    move-result-object p1

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 946
    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getPresetListPSInfo()V

    .line 948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 936
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 939
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getPresetPSName(I)Ljava/lang/String;

    move-result-object p1

    .line 940
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 926
    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 929
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getPresetFreqPSList(I)[Ljava/lang/String;

    move-result-object p1

    .line 930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1

    .line 912
    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 916
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 919
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setPresetFreqList(IILjava/lang/String;)Z

    move-result p1

    .line 920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 902
    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 905
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getPresetFreqList(I)[Ljava/lang/String;

    move-result-object p1

    .line 906
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1

    .line 892
    :pswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 895
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getPresetFreqListCount(I)I

    move-result p1

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 882
    :pswitch_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 885
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getValidFreqList(I)[Ljava/lang/String;

    move-result-object p1

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1

    .line 872
    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 875
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getValidFreqListCount(I)I

    move-result p1

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 864
    :pswitch_42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getTunerModel()B

    move-result p1

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 854
    :pswitch_43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 857
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setTunerRegWithModel(B)Z

    move-result p1

    .line 858
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 842
    :pswitch_44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setTunerReg(BB)Z

    move-result p1

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 835
    :pswitch_45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->bandChange()V

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 826
    :pswitch_46
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 829
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->playPresetFreq(I)V

    .line 830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 818
    :pswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->seekDown()Z

    move-result p1

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 810
    :pswitch_48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->seekUp()Z

    move-result p1

    .line 812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 802
    :pswitch_49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->tuneDown()Z

    move-result p1

    .line 804
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 794
    :pswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->tuneUp()Z

    move-result p1

    .line 796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 786
    :pswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultArea()Ljava/lang/String;

    move-result-object p1

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 778
    :pswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setDefaultArea()Z

    move-result p1

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 770
    :pswitch_4d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getCurrentArea()Ljava/lang/String;

    move-result-object p1

    .line 772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 760
    :pswitch_4e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 763
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setCurrentArea(I)Z

    move-result p1

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 752
    :pswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->isValidFreq()Z

    move-result p1

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 744
    :pswitch_50
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getCurrentFreq()Ljava/lang/String;

    move-result-object p1

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 734
    :pswitch_51
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 737
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setCurrentFreq(Ljava/lang/String;)Z

    move-result p1

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 726
    :pswitch_52
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getRFInputMode()Ljava/lang/String;

    move-result-object p1

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 716
    :pswitch_53
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 719
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setRFInputMode(I)Z

    move-result p1

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 706
    :pswitch_54
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 709
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->setCurrentBand(I)Z

    move-result p1

    .line 710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 698
    :pswitch_55
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getCurrentBand()Ljava/lang/String;

    move-result-object p1

    .line 700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 688
    :pswitch_56
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 691
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->searchStepDown(I)Z

    move-result p1

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 678
    :pswitch_57
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 681
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->searchStepUp(I)Z

    move-result p1

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 670
    :pswitch_58
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->stopSearch()Z

    move-result p1

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 660
    :pswitch_59
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 663
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->autoSearchWithPreview(I)Z

    move-result p1

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 650
    :pswitch_5a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 653
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->autoSearch(I)Z

    move-result p1

    .line 654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 642
    :pswitch_5b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getEONStatus()Z

    move-result p1

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 634
    :pswitch_5c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getEWSStatus()Z

    move-result p1

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 626
    :pswitch_5d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getTAStatus()Z

    move-result p1

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 618
    :pswitch_5e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getTASeekStatus()Z

    move-result p1

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 610
    :pswitch_5f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getPTYSeekStatus()Z

    move-result p1

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 602
    :pswitch_60
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getTPSeekStatus()Z

    move-result p1

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 594
    :pswitch_61
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getAFSeekStatus()Z

    move-result p1

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 586
    :pswitch_62
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getStepDownStatus()Z

    move-result p1

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 578
    :pswitch_63
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getStepUpStatus()Z

    move-result p1

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 570
    :pswitch_64
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getAutoSearchWithPreviewStatus()Z

    move-result p1

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 562
    :pswitch_65
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getSeekDownStatus()Z

    move-result p1

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 554
    :pswitch_66
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getSeekUpStatus()Z

    move-result p1

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 546
    :pswitch_67
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getAutoSearchStatus()Z

    move-result p1

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 538
    :pswitch_68
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getCurRTInfo()Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 530
    :pswitch_69
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getCurPTYInfo()Ljava/lang/String;

    move-result-object p1

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 522
    :pswitch_6a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getCurPSInfo()Ljava/lang/String;

    move-result-object p1

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 514
    :pswitch_6b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->isRDSStation()Z

    move-result p1

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 506
    :pswitch_6c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->isTP()Z

    move-result p1

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 498
    :pswitch_6d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getSignalStrength()I

    move-result p1

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 490
    :pswitch_6e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getVoiceChannelType()Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 485
    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
