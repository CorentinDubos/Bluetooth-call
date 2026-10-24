.class public abstract Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;
.super Landroid/os/Binder;
.source "IIPodService.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

.field static final TRANSACTION_accessoryHIDReport:I = 0x4a

.field static final TRANSACTION_addAuthenticationListener:I = 0x9

.field static final TRANSACTION_addAuthenticationStateListener:I = 0xb

.field static final TRANSACTION_cancelCommand:I = 0x13

.field static final TRANSACTION_enterExtendedInterfaceMode:I = 0x7

.field static final TRANSACTION_exitExtendedInterfaceMode:I = 0x8

.field static final TRANSACTION_getArtworkData:I = 0x29

.field static final TRANSACTION_getArtworkFormats:I = 0x27

.field static final TRANSACTION_getArtworkTimes:I = 0x2b

.field static final TRANSACTION_getAudiobookSpeed:I = 0x3b

.field static final TRANSACTION_getAuthenticationState:I = 0xd

.field static final TRANSACTION_getCurrentPlayingTrackChapterInfo:I = 0x22

.field static final TRANSACTION_getCurrentPlayingTrackChapterName:I = 0x25

.field static final TRANSACTION_getCurrentPlayingTrackChapterPlayStatus:I = 0x24

.field static final TRANSACTION_getCurrentPlayingTrackIndex:I = 0x2e

.field static final TRANSACTION_getDBTrackInfo:I = 0x1f

.field static final TRANSACTION_getDBiTunesInfo:I = 0x1d

.field static final TRANSACTION_getIndexedPlayingTrackAlbumName:I = 0x31

.field static final TRANSACTION_getIndexedPlayingTrackArtistName:I = 0x30

.field static final TRANSACTION_getIndexedPlayingTrackInfo:I = 0x26

.field static final TRANSACTION_getIndexedPlayingTrackTitle:I = 0x2f

.field static final TRANSACTION_getMFiProtocol:I = 0xe

.field static final TRANSACTION_getNumPlayingTracks:I = 0x34

.field static final TRANSACTION_getNumberCategorizedDBRecords:I = 0x19

.field static final TRANSACTION_getPBTrackInfo:I = 0x20

.field static final TRANSACTION_getPlayStatus:I = 0x2c

.field static final TRANSACTION_getPlaylistInfo:I = 0x21

.field static final TRANSACTION_getPlugEventState:I = 0x4f

.field static final TRANSACTION_getPlugEventType:I = 0x4e

.field static final TRANSACTION_getRepeat:I = 0x38

.field static final TRANSACTION_getShuffle:I = 0x36

.field static final TRANSACTION_getSupportedEventNotification:I = 0x14

.field static final TRANSACTION_getTrackArtworkData:I = 0x28

.field static final TRANSACTION_getTrackArtworkTimes:I = 0x2a

.field static final TRANSACTION_getUIDTrackInfo:I = 0x1e

.field static final TRANSACTION_getUsbPosition:I = 0x6

.field static final TRANSACTION_iPodAudioPause:I = 0x3

.field static final TRANSACTION_iPodAudioPlay:I = 0x2

.field static final TRANSACTION_iPodAudioSampleRateChange:I = 0x1

.field static final TRANSACTION_iPodAudioSetVolume:I = 0x5

.field static final TRANSACTION_iPodAudioStop:I = 0x4

.field static final TRANSACTION_initCarPlayFunc:I = 0x4d

.field static final TRANSACTION_ipod_get_activate:I = 0x54

.field static final TRANSACTION_ipod_set_activate:I = 0x53

.field static final TRANSACTION_jni_ipod_set_otg_mode:I = 0x55

.field static final TRANSACTION_launchCarLife:I = 0x4c

.field static final TRANSACTION_playControl:I = 0x33

.field static final TRANSACTION_playCurrentSelection:I = 0x1b

.field static final TRANSACTION_playMediaLibraryCollection:I = 0x3e

.field static final TRANSACTION_playMediaLibraryCurrentSelection:I = 0x3c

.field static final TRANSACTION_playMediaLibraryItems:I = 0x3d

.field static final TRANSACTION_playMediaLibrarySpecial:I = 0x3f

.field static final TRANSACTION_registerCarPlayiAP2Listener:I = 0x50

.field static final TRANSACTION_removeAuthencationListener:I = 0xa

.field static final TRANSACTION_removeAuthenticationStateListener:I = 0xc

.field static final TRANSACTION_removeCarPlayiAP2Listener:I = 0x51

.field static final TRANSACTION_resetDBSelection:I = 0x17

.field static final TRANSACTION_resetDBSelectionHierarchy:I = 0x1c

.field static final TRANSACTION_retrieveCategorizedDatabaseRecords:I = 0x1a

.field static final TRANSACTION_selectDBRecord:I = 0x18

.field static final TRANSACTION_setAudiobookSpeed:I = 0x3a

.field static final TRANSACTION_setCurrentPlayingTrack:I = 0x35

.field static final TRANSACTION_setCurrentPlayingTrackChapterInfo:I = 0x23

.field static final TRANSACTION_setDigitalAudioEventListener:I = 0x10

.field static final TRANSACTION_setDisplayRemoteLingoRetListener:I = 0x12

.field static final TRANSACTION_setEventNotification:I = 0x16

.field static final TRANSACTION_setExtendedInterfaceRetListener:I = 0xf

.field static final TRANSACTION_setGeneralLingoRetListener:I = 0x11

.field static final TRANSACTION_setNowPlayingInfoListener:I = 0x42

.field static final TRANSACTION_setPlayStatusChangeNotification:I = 0x32

.field static final TRANSACTION_setProperty:I = 0x52

.field static final TRANSACTION_setRemoteEventNotification:I = 0x2d

.field static final TRANSACTION_setRepeat:I = 0x39

.field static final TRANSACTION_setShuffle:I = 0x37

.field static final TRANSACTION_setUIModeCommand:I = 0x15

.field static final TRANSACTION_startHID:I = 0x49

.field static final TRANSACTION_startMediaLibraryInformation:I = 0x43

.field static final TRANSACTION_startMediaLibraryUpdates:I = 0x45

.field static final TRANSACTION_startNowPlayingUpdates:I = 0x40

.field static final TRANSACTION_startUSBDeviceModeAudio:I = 0x47

.field static final TRANSACTION_stopHID:I = 0x4b

.field static final TRANSACTION_stopMediaLibraryInformation:I = 0x44

.field static final TRANSACTION_stopMediaLibraryUpdates:I = 0x46

.field static final TRANSACTION_stopNowPlayingUpdates:I = 0x41

.field static final TRANSACTION_stopUSBDeviceModeAudio:I = 0x48


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 692
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 693
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 704
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 705
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    if-eqz v1, :cond_1

    .line 706
    check-cast v0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    return-object v0

    .line 708
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;
    .locals 1

    .line 3935
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;)Z
    .locals 1

    .line 3928
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 3929
    sput-object p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    if-eq p1, v0, :cond_12

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1648
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1638
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1641
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->jni_ipod_set_otg_mode(I)I

    move-result p1

    .line 1642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1626
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1630
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1631
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->ipod_get_activate(ILjava/lang/String;)I

    move-result p1

    .line 1632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1614
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1618
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1619
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->ipod_set_activate(ILjava/lang/String;)I

    move-result p1

    .line 1620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1603
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1607
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1608
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setProperty(ILjava/lang/String;)V

    .line 1609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1594
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;

    move-result-object p1

    .line 1597
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->removeCarPlayiAP2Listener(Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;)V

    .line 1598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1585
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;

    move-result-object p1

    .line 1588
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->registerCarPlayiAP2Listener(Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;)V

    .line 1589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1577
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getPlugEventState()Z

    move-result p1

    .line 1579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1569
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getPlugEventType()Ljava/lang/String;

    move-result-object p1

    .line 1571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1562
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->initCarPlayFunc()V

    .line 1564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1553
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1556
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->launchCarLife(B)V

    .line 1557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1546
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->stopHID()V

    .line 1548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1535
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1539
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1540
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->accessoryHIDReport(BB)V

    .line 1541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1528
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->startHID()V

    .line 1530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1521
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->stopUSBDeviceModeAudio()V

    .line 1523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1514
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->startUSBDeviceModeAudio()V

    .line 1516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1507
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1508
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->stopMediaLibraryUpdates()V

    .line 1509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1500
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->startMediaLibraryUpdates()V

    .line 1502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1493
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->stopMediaLibraryInformation()V

    .line 1495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1486
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->startMediaLibraryInformation()V

    .line 1488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1477
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object p1

    .line 1480
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setNowPlayingInfoListener(Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;)V

    .line 1481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1470
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->stopNowPlayingUpdates()V

    .line 1472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1449
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1452
    sget-object p1, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 1458
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 1459
    sget-object p4, Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;

    .line 1464
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->startNowPlayingUpdates(Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;)V

    .line 1465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1438
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v3, v1

    .line 1443
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->playMediaLibrarySpecial(Ljava/lang/String;Z)V

    .line 1444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1423
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1427
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 1429
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    .line 1432
    invoke-virtual/range {v4 .. v9}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->playMediaLibraryCollection(Ljava/lang/String;BJLjava/lang/String;)V

    .line 1433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1410
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1412
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 1414
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1416
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1417
    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->playMediaLibraryItems([Ljava/lang/String;JLjava/lang/String;)V

    .line 1418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1401
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1404
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->playMediaLibraryCurrentSelection(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1393
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getAudiobookSpeed()B

    move-result p1

    .line 1395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 1381
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1385
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1386
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setAudiobookSpeed(BB)B

    move-result p1

    .line 1387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 1369
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1373
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1374
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setRepeat(BB)B

    move-result p1

    .line 1375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 1361
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getRepeat()B

    move-result p1

    .line 1363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 1349
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1353
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1354
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setShuffle(BB)B

    move-result p1

    .line 1355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 1341
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getShuffle()B

    move-result p1

    .line 1343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 1331
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1334
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setCurrentPlayingTrack(I)B

    move-result p1

    .line 1335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 1323
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getNumPlayingTracks()I

    move-result p1

    .line 1325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1313
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1316
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->playControl(B)B

    move-result p1

    .line 1317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 1298
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 1301
    sget-object p1, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;

    .line 1306
    :cond_3
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setPlayStatusChangeNotification(Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;)B

    move-result p1

    .line 1307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 1288
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1291
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getIndexedPlayingTrackAlbumName(I)Ljava/lang/String;

    move-result-object p1

    .line 1292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1278
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1281
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getIndexedPlayingTrackArtistName(I)Ljava/lang/String;

    move-result-object p1

    .line 1282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1268
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1271
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getIndexedPlayingTrackTitle(I)Ljava/lang/String;

    move-result-object p1

    .line 1272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 1260
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getCurrentPlayingTrackIndex()I

    move-result p1

    .line 1262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 1245
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 1248
    sget-object p1, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;

    .line 1253
    :cond_4
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setRemoteEventNotification(Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;)B

    move-result p1

    .line 1254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 1229
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1232
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getPlayStatus(B)Lcom/hzbhd/midwareproxy/iPod/PlayStatus;

    move-result-object p1

    .line 1233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 1235
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    invoke-virtual {p1, p3, v1}, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1239
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 1205
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v4, p0

    .line 1216
    invoke-virtual/range {v4 .. v9}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getArtworkTimes(B[BIII)Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;

    move-result-object p1

    .line 1217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 1219
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    invoke-virtual {p1, p3, v1}, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 1223
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 1183
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1192
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getTrackArtworkTimes(IIII)Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;

    move-result-object p1

    .line 1193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 1195
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    invoke-virtual {p1, p3, v1}, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 1199
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 1161
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1165
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1170
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getArtworkData(B[BII)Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;

    move-result-object p1

    .line 1171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    .line 1173
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    invoke-virtual {p1, p3, v1}, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 1177
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    .line 1141
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1148
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getTrackArtworkData(III)Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;

    move-result-object p1

    .line 1149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 1151
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    invoke-virtual {p1, p3, v1}, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 1155
    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    .line 1127
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getArtworkFormats()Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;

    move-result-object p1

    .line 1129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_a

    .line 1131
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    invoke-virtual {p1, p3, v1}, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 1135
    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 1107
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1114
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getIndexedPlayingTrackInfo(BII)Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;

    move-result-object p1

    .line 1115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b

    .line 1117
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    invoke-virtual {p1, p3, v1}, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 1121
    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    .line 1098
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1101
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getCurrentPlayingTrackChapterName(I)V

    .line 1102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1089
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1092
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getCurrentPlayingTrackChapterPlayStatus(I)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1080
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1083
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setCurrentPlayingTrackChapterInfo(I)V

    .line 1084
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1073
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getCurrentPlayingTrackChapterInfo()V

    .line 1075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1062
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1067
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getPlaylistInfo(BI)V

    .line 1068
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1044
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1050
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 1051
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;

    .line 1056
    :cond_c
    invoke-virtual {p0, p1, p4, v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getPBTrackInfo(IILcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V

    .line 1057
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1026
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1030
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 1033
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;

    .line 1038
    :cond_d
    invoke-virtual {p0, p1, p4, v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDBTrackInfo(IILcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V

    .line 1039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1010
    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_e

    .line 1015
    sget-object p4, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;

    .line 1020
    :cond_e
    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getUIDTrackInfo([BLcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V

    .line 1021
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 994
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 997
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDBiTunesInfo(B)Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;

    move-result-object p1

    .line 998
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 1000
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    invoke-virtual {p1, p3, v1}, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 1004
    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v1

    .line 984
    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 987
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->resetDBSelectionHierarchy(I)B

    move-result p1

    .line 988
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 974
    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 977
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->playCurrentSelection(I)B

    move-result p1

    .line 978
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 961
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 968
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->retrieveCategorizedDatabaseRecords(BII)V

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 951
    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 954
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getNumberCategorizedDBRecords(B)I

    move-result p1

    .line 955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 939
    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 944
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->selectDBRecord(BI)B

    move-result p1

    .line 945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 931
    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->resetDBSelection()B

    move-result p1

    .line 933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 916
    :pswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    .line 919
    sget-object p1, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;

    .line 924
    :cond_10
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setEventNotification(Lcom/hzbhd/midwareproxy/iPod/EventNotification;)B

    move-result p1

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 906
    :pswitch_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 909
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setUIModeCommand(B)B

    move-result p1

    .line 910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 892
    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getSupportedEventNotification()Lcom/hzbhd/midwareproxy/iPod/EventNotification;

    move-result-object p1

    .line 894
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_11

    .line 896
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    invoke-virtual {p1, p3, v1}, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 900
    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v1

    .line 884
    :pswitch_42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->cancelCommand()B

    move-result p1

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 875
    :pswitch_43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;

    move-result-object p1

    .line 878
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setDisplayRemoteLingoRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;)V

    .line 879
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 866
    :pswitch_44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;

    move-result-object p1

    .line 869
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setGeneralLingoRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;)V

    .line 870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 857
    :pswitch_45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/DigitalAudioEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/DigitalAudioEventListener;

    move-result-object p1

    .line 860
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setDigitalAudioEventListener(Lcom/hzbhd/midwareproxy/iPod/aidl/DigitalAudioEventListener;)V

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 848
    :pswitch_46
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    move-result-object p1

    .line 851
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->setExtendedInterfaceRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;)V

    .line 852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 840
    :pswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getMFiProtocol()B

    move-result p1

    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 832
    :pswitch_48
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getAuthenticationState()I

    move-result p1

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 823
    :pswitch_49
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;

    move-result-object p1

    .line 826
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->removeAuthenticationStateListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;)V

    .line 827
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 814
    :pswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;

    move-result-object p1

    .line 817
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->addAuthenticationStateListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;)V

    .line 818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 805
    :pswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;

    move-result-object p1

    .line 808
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->removeAuthencationListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;)V

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 796
    :pswitch_4c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;

    move-result-object p1

    .line 799
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->addAuthenticationListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;)V

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 788
    :pswitch_4d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->exitExtendedInterfaceMode()B

    move-result p1

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 780
    :pswitch_4e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->enterExtendedInterfaceMode()B

    move-result p1

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByte(B)V

    return v1

    .line 772
    :pswitch_4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getUsbPosition()I

    move-result p1

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 760
    :pswitch_50
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 765
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->iPodAudioSetVolume(FF)I

    move-result p1

    .line 766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 752
    :pswitch_51
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->iPodAudioStop()I

    move-result p1

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 744
    :pswitch_52
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->iPodAudioPause()I

    move-result p1

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 736
    :pswitch_53
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->iPodAudioPlay()I

    move-result p1

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 726
    :pswitch_54
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 729
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->iPodAudioSampleRateChange(I)I

    move-result p1

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 721
    :cond_12
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
