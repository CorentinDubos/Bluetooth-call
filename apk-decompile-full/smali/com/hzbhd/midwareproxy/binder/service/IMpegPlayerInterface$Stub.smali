.class public abstract Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;
.super Landroid/os/Binder;
.source "IMpegPlayerInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

.field static final TRANSACTION_backward:I = 0x10

.field static final TRANSACTION_discGoto:I = 0x23

.field static final TRANSACTION_display:I = 0x16

.field static final TRANSACTION_duration:I = 0xe

.field static final TRANSACTION_enterMpegSrc32:I = 0x66

.field static final TRANSACTION_forward:I = 0x11

.field static final TRANSACTION_getCDTrackName:I = 0x4b

.field static final TRANSACTION_getCDTracksCount:I = 0x46

.field static final TRANSACTION_getChildrenLockLevel_32:I = 0x78

.field static final TRANSACTION_getChildrenLockPassword_32:I = 0x79

.field static final TRANSACTION_getCurrAudioLang:I = 0x31

.field static final TRANSACTION_getCurrAudioLangText:I = 0x30

.field static final TRANSACTION_getCurrSubtitle:I = 0x2f

.field static final TRANSACTION_getCurrSubtitleText:I = 0x2e

.field static final TRANSACTION_getCurrentTotalNo:I = 0x4

.field static final TRANSACTION_getDVDAudio_32:I = 0x77

.field static final TRANSACTION_getDVDChaptersCount:I = 0x48

.field static final TRANSACTION_getDVDCurrChapNumber:I = 0x2b

.field static final TRANSACTION_getDVDMenuLang_32:I = 0x75

.field static final TRANSACTION_getDVDOsdLang_32:I = 0x74

.field static final TRANSACTION_getDVDSubTitle_32:I = 0x76

.field static final TRANSACTION_getDVDTitlesCount:I = 0x47

.field static final TRANSACTION_getDeviceStatus:I = 0x57

.field static final TRANSACTION_getDiscType:I = 0x28

.field static final TRANSACTION_getDivxDeactivCode:I = 0x5f

.field static final TRANSACTION_getDivxRegTime:I = 0x5d

.field static final TRANSACTION_getDivxRegionCode:I = 0x5a

.field static final TRANSACTION_getId3Info:I = 0x3

.field static final TRANSACTION_getLastPlayingFile:I = 0x39

.field static final TRANSACTION_getList:I = 0x24

.field static final TRANSACTION_getMpegCurrAlbumName:I = 0x34

.field static final TRANSACTION_getMpegCurrArtistName:I = 0x35

.field static final TRANSACTION_getMpegCurrPlayingIndex:I = 0x36

.field static final TRANSACTION_getMpegCurrPlayingName:I = 0x33

.field static final TRANSACTION_getMpegCurrentPlayingType:I = 0x37

.field static final TRANSACTION_getMpegPlayingTimeCurr:I = 0x3b

.field static final TRANSACTION_getMpegPlayingTimeTotal:I = 0x3a

.field static final TRANSACTION_getMpegRootMenuState:I = 0x2a

.field static final TRANSACTION_getMpegStatus:I = 0x1

.field static final TRANSACTION_getMpegTestNumber:I = 0x61

.field static final TRANSACTION_getMpegVersion:I = 0x38

.field static final TRANSACTION_getNameReqStatus:I = 0x1e

.field static final TRANSACTION_getPlayInfo:I = 0x2

.field static final TRANSACTION_getRepeatMode:I = 0xd

.field static final TRANSACTION_getRomFileName:I = 0x4d

.field static final TRANSACTION_getRomFilesCount:I = 0x4a

.field static final TRANSACTION_getRomFolderName:I = 0x4c

.field static final TRANSACTION_getRomFoldersCount:I = 0x49

.field static final TRANSACTION_getShuffleMode:I = 0xc

.field static final TRANSACTION_gotoChapter:I = 0x20

.field static final TRANSACTION_gotoTrack:I = 0x21

.field static final TRANSACTION_initSysSet_32:I = 0x7a

.field static final TRANSACTION_initTrayData_32:I = 0x6d

.field static final TRANSACTION_isDiscExist:I = 0x27

.field static final TRANSACTION_isDiscQueryEnd:I = 0x29

.field static final TRANSACTION_isDivxActive:I = 0x5b

.field static final TRANSACTION_isFirstStart:I = 0x7d

.field static final TRANSACTION_isPlaying:I = 0x5

.field static final TRANSACTION_next:I = 0xa

.field static final TRANSACTION_passMpegTouchEvent:I = 0x32

.field static final TRANSACTION_pause:I = 0x7

.field static final TRANSACTION_photoMove:I = 0x15

.field static final TRANSACTION_photoRotateLeft:I = 0x1b

.field static final TRANSACTION_photoRotateRight:I = 0x1a

.field static final TRANSACTION_photoZoomIn:I = 0x19

.field static final TRANSACTION_photoZoomOut:I = 0x18

.field static final TRANSACTION_play:I = 0x8

.field static final TRANSACTION_playMpegFast:I = 0x42

.field static final TRANSACTION_playMpegSlow:I = 0x43

.field static final TRANSACTION_playRootMenu:I = 0x1c

.field static final TRANSACTION_position:I = 0xf

.field static final TRANSACTION_prev:I = 0x9

.field static final TRANSACTION_registerBackCameraChangeCallBack:I = 0x7e

.field static final TRANSACTION_registerCallBack:I = 0x52

.field static final TRANSACTION_registerRealCallBack:I = 0x54

.field static final TRANSACTION_releaseSource:I = 0x56

.field static final TRANSACTION_repeat:I = 0x12

.field static final TRANSACTION_reqDivxDeactiveCode:I = 0x5e

.field static final TRANSACTION_reqDivxRegTime:I = 0x5c

.field static final TRANSACTION_reqDivxRegionCode:I = 0x59

.field static final TRANSACTION_reqMpegUpgrade:I = 0x26

.field static final TRANSACTION_resetMpegSystem_32:I = 0x7c

.field static final TRANSACTION_rptControllBarStatus:I = 0x58

.field static final TRANSACTION_scan:I = 0x22

.field static final TRANSACTION_seek:I = 0xb

.field static final TRANSACTION_selectType:I = 0x25

.field static final TRANSACTION_sendEjectKey32:I = 0x67

.field static final TRANSACTION_setAngle:I = 0x40

.field static final TRANSACTION_setAudio:I = 0x3f

.field static final TRANSACTION_setAutoTrayInTime_32:I = 0x6b

.field static final TRANSACTION_setCDTrackToPlay:I = 0x4e

.field static final TRANSACTION_setChildrenLockLevel_32:I = 0x72

.field static final TRANSACTION_setChildrenLockPassword_32:I = 0x73

.field static final TRANSACTION_setDVDAudioLang:I = 0x2d

.field static final TRANSACTION_setDVDAudio_32:I = 0x6f

.field static final TRANSACTION_setDVDFileToPlay:I = 0x50

.field static final TRANSACTION_setDVDMenuLang_32:I = 0x71

.field static final TRANSACTION_setDVDOsdLang_32:I = 0x6e

.field static final TRANSACTION_setDVDSubTitle_32:I = 0x70

.field static final TRANSACTION_setDVDSubtitle:I = 0x2c

.field static final TRANSACTION_setDvdSettings32:I = 0x65

.field static final TRANSACTION_setMechanismCustCode_32:I = 0x6c

.field static final TRANSACTION_setMpegDirection:I = 0x3d

.field static final TRANSACTION_setMpegMode:I = 0x60

.field static final TRANSACTION_setMpegNotifyLanguage:I = 0x62

.field static final TRANSACTION_setMpegPowerDown:I = 0x44

.field static final TRANSACTION_setMpegPowerUp:I = 0x45

.field static final TRANSACTION_setMpegZoom:I = 0x3c

.field static final TRANSACTION_setPBC:I = 0x14

.field static final TRANSACTION_setPassWord:I = 0x51

.field static final TRANSACTION_setReadDisc:I = 0x63

.field static final TRANSACTION_setRepeatAB:I = 0x41

.field static final TRANSACTION_setRomFileToPlay:I = 0x4f

.field static final TRANSACTION_setRootMenu:I = 0x3e

.field static final TRANSACTION_setTrayEjectTime_32:I = 0x6a

.field static final TRANSACTION_setTrayEnterTime_32:I = 0x69

.field static final TRANSACTION_setTrayTime32:I = 0x64

.field static final TRANSACTION_shuffle:I = 0x17

.field static final TRANSACTION_sndMpegPowerOffStatus_32:I = 0x7b

.field static final TRANSACTION_startDiscLoader32:I = 0x68

.field static final TRANSACTION_stop:I = 0x6

.field static final TRANSACTION_subTitle:I = 0x13

.field static final TRANSACTION_title:I = 0x1f

.field static final TRANSACTION_tsPosition:I = 0x1d

.field static final TRANSACTION_unregisterBackCameraChangeCallBack:I = 0x7f

.field static final TRANSACTION_unregisterCallBack:I = 0x53

.field static final TRANSACTION_unregisterRealCallBack:I = 0x55


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 498
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 499
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 510
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 511
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    if-eqz v1, :cond_1

    .line 512
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    return-object v0

    .line 514
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;
    .locals 1

    .line 4304
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;)Z
    .locals 1

    .line 4297
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 4298
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

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

    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1623
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1615
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->unregisterBackCameraChangeCallBack()Z

    move-result p1

    .line 1617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1618
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1605
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;

    move-result-object p1

    .line 1608
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->registerBackCameraChangeCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;)Z

    move-result p1

    .line 1609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1597
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->isFirstStart()Z

    move-result p1

    .line 1599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1600
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1590
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->resetMpegSystem_32()V

    .line 1592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1581
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 1584
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->sndMpegPowerOffStatus_32(Z)V

    .line 1585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1574
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->initSysSet_32()V

    .line 1576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1566
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getChildrenLockPassword_32()Ljava/lang/String;

    move-result-object p1

    .line 1568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1558
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getChildrenLockLevel_32()B

    move-result p1

    .line 1560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 1550
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDVDAudio_32()Ljava/lang/String;

    move-result-object p1

    .line 1552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1542
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDVDSubTitle_32()Ljava/lang/String;

    move-result-object p1

    .line 1544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1534
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDVDMenuLang_32()Ljava/lang/String;

    move-result-object p1

    .line 1536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1537
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1526
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDVDOsdLang_32()Ljava/lang/String;

    move-result-object p1

    .line 1528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1517
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1520
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setChildrenLockPassword_32(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1508
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1511
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setChildrenLockLevel_32(B)V

    .line 1512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1499
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1502
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setDVDMenuLang_32(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1490
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1493
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setDVDSubTitle_32(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1481
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1484
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setDVDAudio_32(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1472
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1475
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setDVDOsdLang_32(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1465
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->initTrayData_32()V

    .line 1467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1456
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1459
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setMechanismCustCode_32(B)V

    .line 1460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1447
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1450
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setAutoTrayInTime_32(B)V

    .line 1451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1438
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1441
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setTrayEjectTime_32(B)V

    .line 1442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1429
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1432
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setTrayEnterTime_32(B)V

    .line 1433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1420
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 1423
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->startDiscLoader32(Z)V

    .line 1424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1412
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->sendEjectKey32()Z

    move-result p1

    .line 1414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1403
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 1406
    :cond_2
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->enterMpegSrc32(Z)V

    .line 1407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1394
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 1397
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setDvdSettings32([B)V

    .line 1398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1385
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 1388
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setTrayTime32([B)V

    .line 1389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1376
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 1379
    :cond_3
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setReadDisc(Z)V

    .line 1380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1367
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1370
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setMpegNotifyLanguage(B)V

    .line 1371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1359
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getMpegTestNumber()I

    move-result p1

    .line 1361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1350
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1353
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setMpegMode(I)V

    .line 1354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1342
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDivxDeactivCode()Ljava/lang/String;

    move-result-object p1

    .line 1344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1345
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1335
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->reqDivxDeactiveCode()V

    .line 1337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1327
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDivxRegTime()I

    move-result p1

    .line 1329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1320
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->reqDivxRegTime()V

    .line 1322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1312
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->isDivxActive()Z

    move-result p1

    .line 1314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1304
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDivxRegionCode()Ljava/lang/String;

    move-result-object p1

    .line 1306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1297
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->reqDivxRegionCode()V

    .line 1299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1288
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 1291
    :cond_4
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->rptControllBarStatus(Z)V

    .line 1292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1281
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDeviceStatus()V

    .line 1283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1274
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->releaseSource()V

    .line 1276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1266
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->unregisterRealCallBack()Z

    move-result p1

    .line 1268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1256
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object p1

    .line 1259
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->registerRealCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;)Z

    move-result p1

    .line 1260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1248
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->unregisterCallBack()Z

    move-result p1

    .line 1250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1238
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object p1

    .line 1241
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;)Z

    move-result p1

    .line 1242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1222
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1226
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 1228
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 1230
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1231
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setPassWord(BBBB)Z

    move-result p1

    .line 1232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1211
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1216
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setDVDFileToPlay(II)V

    .line 1217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1198
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1205
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setRomFileToPlay(III)V

    .line 1206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1189
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1192
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setCDTrackToPlay(I)V

    .line 1193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1175
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1182
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getRomFileName(III)Ljava/lang/String;

    move-result-object p1

    .line 1183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1163
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1168
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getRomFolderName(II)Ljava/lang/String;

    move-result-object p1

    .line 1169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1153
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1156
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getCDTrackName(I)Ljava/lang/String;

    move-result-object p1

    .line 1157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1141
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1146
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getRomFilesCount(II)I

    move-result p1

    .line 1147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1131
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1134
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getRomFoldersCount(I)I

    move-result p1

    .line 1135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1123
    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDVDChaptersCount()I

    move-result p1

    .line 1125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1115
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDVDTitlesCount()I

    move-result p1

    .line 1117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1107
    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getCDTracksCount()I

    move-result p1

    .line 1109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1099
    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setMpegPowerUp()I

    move-result p1

    .line 1101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1091
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setMpegPowerDown()I

    move-result p1

    .line 1093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1083
    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->playMpegSlow()I

    move-result p1

    .line 1085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1075
    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->playMpegFast()I

    move-result p1

    .line 1077
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1067
    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setRepeatAB()Z

    move-result p1

    .line 1069
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1059
    :pswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setAngle()Z

    move-result p1

    .line 1061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1051
    :pswitch_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setAudio()Z

    move-result p1

    .line 1053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1043
    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setRootMenu()I

    move-result p1

    .line 1045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1033
    :pswitch_42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1036
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setMpegDirection(I)I

    move-result p1

    .line 1037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1025
    :pswitch_43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setMpegZoom()I

    move-result p1

    .line 1027
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1017
    :pswitch_44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getMpegPlayingTimeCurr()I

    move-result p1

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1009
    :pswitch_45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getMpegPlayingTimeTotal()I

    move-result p1

    .line 1011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 999
    :pswitch_46
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1002
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getLastPlayingFile(I)Ljava/lang/String;

    move-result-object p1

    .line 1003
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 991
    :pswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getMpegVersion()Ljava/lang/String;

    move-result-object p1

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 983
    :pswitch_48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getMpegCurrentPlayingType()I

    move-result p1

    .line 985
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 975
    :pswitch_49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getMpegCurrPlayingIndex()I

    move-result p1

    .line 977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 967
    :pswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getMpegCurrArtistName()Ljava/lang/String;

    move-result-object p1

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 959
    :pswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getMpegCurrAlbumName()Ljava/lang/String;

    move-result-object p1

    .line 961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 951
    :pswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getMpegCurrPlayingName()Ljava/lang/String;

    move-result-object p1

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 937
    :pswitch_4d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    .line 941
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 944
    invoke-virtual {p0, v0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->passMpegTouchEvent(ZII)I

    move-result p1

    .line 945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 929
    :pswitch_4e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getCurrAudioLang()I

    move-result p1

    .line 931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 921
    :pswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getCurrAudioLangText()Ljava/lang/String;

    move-result-object p1

    .line 923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 913
    :pswitch_50
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getCurrSubtitle()I

    move-result p1

    .line 915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 905
    :pswitch_51
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getCurrSubtitleText()Ljava/lang/String;

    move-result-object p1

    .line 907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 897
    :pswitch_52
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setDVDAudioLang()I

    move-result p1

    .line 899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 889
    :pswitch_53
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setDVDSubtitle()I

    move-result p1

    .line 891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 881
    :pswitch_54
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDVDCurrChapNumber()I

    move-result p1

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 873
    :pswitch_55
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getMpegRootMenuState()I

    move-result p1

    .line 875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 865
    :pswitch_56
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->isDiscQueryEnd()Z

    move-result p1

    .line 867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 857
    :pswitch_57
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDiscType()I

    move-result p1

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 849
    :pswitch_58
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->isDiscExist()Z

    move-result p1

    .line 851
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 842
    :pswitch_59
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->reqMpegUpgrade()V

    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 833
    :pswitch_5a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 836
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->selectType(I)V

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 822
    :pswitch_5b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 827
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getList(II)V

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 811
    :pswitch_5c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 816
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->discGoto(II)V

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 804
    :pswitch_5d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->scan()V

    .line 806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 795
    :pswitch_5e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 798
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->gotoTrack(I)V

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 784
    :pswitch_5f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 789
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->gotoChapter(II)V

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 776
    :pswitch_60
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->title()Z

    move-result p1

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 768
    :pswitch_61
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getNameReqStatus()Z

    move-result p1

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 754
    :pswitch_62
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 761
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->tsPosition(III)Z

    move-result p1

    .line 762
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 746
    :pswitch_63
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->playRootMenu()Z

    move-result p1

    .line 748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 738
    :pswitch_64
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->photoRotateLeft()Z

    move-result p1

    .line 740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 730
    :pswitch_65
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->photoRotateRight()Z

    move-result p1

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 722
    :pswitch_66
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->photoZoomIn()Z

    move-result p1

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 714
    :pswitch_67
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->photoZoomOut()Z

    move-result p1

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 706
    :pswitch_68
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->shuffle()Z

    move-result p1

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 698
    :pswitch_69
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->display()Z

    move-result p1

    .line 700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 688
    :pswitch_6a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 691
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->photoMove(I)Z

    move-result p1

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 680
    :pswitch_6b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->setPBC()Z

    move-result p1

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 672
    :pswitch_6c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->subTitle()Z

    move-result p1

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 664
    :pswitch_6d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->repeat()Z

    move-result p1

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 656
    :pswitch_6e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->forward()Z

    move-result p1

    .line 658
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 648
    :pswitch_6f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->backward()Z

    move-result p1

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 640
    :pswitch_70
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->position()J

    move-result-wide p1

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 632
    :pswitch_71
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->duration()J

    move-result-wide p1

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 624
    :pswitch_72
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getRepeatMode()I

    move-result p1

    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 616
    :pswitch_73
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getShuffleMode()I

    move-result p1

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 606
    :pswitch_74
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 609
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->seek(I)Z

    move-result p1

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 599
    :pswitch_75
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->next()V

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 592
    :pswitch_76
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->prev()V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 585
    :pswitch_77
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->play()V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 578
    :pswitch_78
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->pause()V

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 571
    :pswitch_79
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->stop()V

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 563
    :pswitch_7a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->isPlaying()Z

    move-result p1

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 555
    :pswitch_7b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getCurrentTotalNo()I

    move-result p1

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 548
    :pswitch_7c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getId3Info()V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 540
    :pswitch_7d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getPlayInfo()Z

    move-result p1

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 532
    :pswitch_7e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getMpegStatus()Z

    move-result p1

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 527
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
