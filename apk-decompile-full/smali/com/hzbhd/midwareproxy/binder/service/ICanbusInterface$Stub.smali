.class public abstract Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;
.super Landroid/os/Binder;
.source "ICanbusInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

.field static final TRANSACTION_actionControl:I = 0x29

.field static final TRANSACTION_amplifierInfoChange:I = 0x19

.field static final TRANSACTION_atvDestroy:I = 0x18

.field static final TRANSACTION_atvInfoChange:I = 0x17

.field static final TRANSACTION_auxInDestroy:I = 0x16

.field static final TRANSACTION_auxInInfoChange:I = 0x15

.field static final TRANSACTION_btMusicId3InfoChange:I = 0x25

.field static final TRANSACTION_btMusicInfoChange:I = 0x13

.field static final TRANSACTION_btMusiceDestroy:I = 0x14

.field static final TRANSACTION_btPhoneCallLogInfoChange:I = 0x12

.field static final TRANSACTION_btPhoneHangUpInfoChange:I = 0xf

.field static final TRANSACTION_btPhoneIncomingInfoChange:I = 0xc

.field static final TRANSACTION_btPhoneOutGoingInfoChange:I = 0xd

.field static final TRANSACTION_btPhoneStatusInfoChange:I = 0x10

.field static final TRANSACTION_btPhoneTalkingInfoChange:I = 0xe

.field static final TRANSACTION_btPhoneTalkingWithTimeInfoChange:I = 0x11

.field static final TRANSACTION_cameraDestroy:I = 0x27

.field static final TRANSACTION_cameraInfoChange:I = 0x26

.field static final TRANSACTION_canbusInfoChange:I = 0x1

.field static final TRANSACTION_currentVolumeInfoChange:I = 0xb

.field static final TRANSACTION_deviceStatusInfoChange:I = 0xa

.field static final TRANSACTION_discInfoChange:I = 0x9

.field static final TRANSACTION_dtvInfoChange:I = 0x8

.field static final TRANSACTION_getAirInfo:I = 0x2c

.field static final TRANSACTION_getAirPageUiSet:I = 0x2b

.field static final TRANSACTION_getCanTypeAllEntity:I = 0x1f

.field static final TRANSACTION_musicDestroy:I = 0x7

.field static final TRANSACTION_musicInfoChange:I = 0x6

.field static final TRANSACTION_musicLrcInfoChange:I = 0x24

.field static final TRANSACTION_onAccStatusChange:I = 0x2d

.field static final TRANSACTION_parkDestroy:I = 0x22

.field static final TRANSACTION_parkInfoChange:I = 0x21

.field static final TRANSACTION_radioDestroy:I = 0x3

.field static final TRANSACTION_radioInfoChange:I = 0x2

.field static final TRANSACTION_registerCanbusInfoChangeCallBack:I = 0x2a

.field static final TRANSACTION_reportCanTypeId:I = 0x20

.field static final TRANSACTION_saveCanTypeId:I = 0x23

.field static final TRANSACTION_sourceSwitchChange:I = 0x28

.field static final TRANSACTION_sourceSwitchDestroy:I = 0x1e

.field static final TRANSACTION_sourceSwitchExitSrcAuxIn2InfoChange:I = 0x1b

.field static final TRANSACTION_sourceSwitchInitInfoChange:I = 0x1d

.field static final TRANSACTION_sourceSwitchMpuMediaInfoChange:I = 0x1a

.field static final TRANSACTION_sourceSwitchNoMediaInfoChange:I = 0x1c

.field static final TRANSACTION_videoDestroy:I = 0x5

.field static final TRANSACTION_videoInfoChange:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 193
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 194
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 205
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    if-eqz v1, :cond_1

    .line 207
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    return-object v0

    .line 209
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;
    .locals 1

    .line 1856
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)Z
    .locals 1

    .line 1849
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1850
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

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
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v14, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v15, p3

    const v2, 0x5f4e5446

    const/4 v13, 0x1

    const-string v3, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    if-eq v0, v2, :cond_18

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 798
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 789
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 792
    invoke-virtual {v14, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->onAccStatusChange(I)V

    .line 793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 781
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getAirInfo()Ljava/lang/String;

    move-result-object v0

    .line 783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    .line 767
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getAirPageUiSet()Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;

    move-result-object v0

    .line 769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    invoke-virtual {v0, v15, v13}, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v13

    .line 758
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Laidl/ICanbusInfoChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Laidl/ICanbusInfoChangeCallback;

    move-result-object v0

    .line 761
    invoke-virtual {v14, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->registerCanbusInfoChangeCallBack(Laidl/ICanbusInfoChangeCallback;)V

    .line 762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 749
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 752
    invoke-virtual {v14, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->actionControl(Ljava/lang/String;)V

    .line 753
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 740
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-virtual {v14, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->sourceSwitchChange(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 733
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->cameraDestroy()V

    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 726
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->cameraInfoChange()V

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 713
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 720
    invoke-virtual {v14, v0, v2, v1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->btMusicId3InfoChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 704
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-virtual {v14, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->musicLrcInfoChange(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 695
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 698
    invoke-virtual {v14, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->saveCanTypeId(I)V

    .line 699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 688
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->parkDestroy()V

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 681
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->parkInfoChange()V

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 672
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 675
    invoke-virtual {v14, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->reportCanTypeId(I)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 656
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 659
    invoke-virtual {v14, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getCanTypeAllEntity(I)Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;

    move-result-object v0

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    .line 662
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    invoke-virtual {v0, v15, v13}, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 666
    :cond_1
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v13

    .line 649
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->sourceSwitchDestroy()V

    .line 651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 640
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 643
    invoke-virtual {v14, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->sourceSwitchInitInfoChange(I)V

    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 631
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v2, v13

    .line 634
    :cond_2
    invoke-virtual {v14, v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->sourceSwitchNoMediaInfoChange(Z)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 624
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->sourceSwitchExitSrcAuxIn2InfoChange()V

    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 611
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 618
    invoke-virtual {v14, v0, v2, v1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->sourceSwitchMpuMediaInfoChange(BBB)V

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 600
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 605
    invoke-virtual {v14, v0, v1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->amplifierInfoChange(Ljava/lang/String;I)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 593
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->atvDestroy()V

    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 586
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->atvInfoChange()V

    .line 588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 579
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->auxInDestroy()V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 572
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->auxInInfoChange()V

    .line 574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 565
    :pswitch_19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->btMusiceDestroy()V

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 558
    :pswitch_1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->btMusicInfoChange()V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 545
    :pswitch_1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {v14, v0, v2, v1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->btPhoneCallLogInfoChange(IILjava/lang/String;)V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 530
    :pswitch_1c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v13

    goto :goto_2

    :cond_3
    move v3, v2

    .line 536
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v2, v13

    .line 538
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 539
    invoke-virtual {v14, v0, v3, v2, v1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->btPhoneTalkingWithTimeInfoChange([BZZI)V

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 500
    :pswitch_1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v5, v13

    goto :goto_3

    :cond_5
    move v5, v2

    .line 508
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v6, v13

    goto :goto_4

    :cond_6
    move v6, v2

    .line 510
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v7, v13

    goto :goto_5

    :cond_7
    move v7, v2

    .line 512
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v8, v13

    goto :goto_6

    :cond_8
    move v8, v2

    .line 514
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 519
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    move-object v11, v0

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move-object v9, v11

    .line 524
    invoke-virtual/range {v0 .. v9}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->btPhoneStatusInfoChange(I[BZZZZIILandroid/os/Bundle;)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 487
    :pswitch_1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v13

    goto :goto_8

    :cond_a
    move v3, v2

    .line 493
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    move v2, v13

    .line 494
    :cond_b
    invoke-virtual {v14, v0, v3, v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->btPhoneHangUpInfoChange([BZZ)V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 474
    :pswitch_1f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v13

    goto :goto_9

    :cond_c
    move v3, v2

    .line 480
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    move v2, v13

    .line 481
    :cond_d
    invoke-virtual {v14, v0, v3, v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->btPhoneTalkingInfoChange([BZZ)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 461
    :pswitch_20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v13

    goto :goto_a

    :cond_e
    move v3, v2

    .line 467
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    move v2, v13

    .line 468
    :cond_f
    invoke-virtual {v14, v0, v3, v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->btPhoneOutGoingInfoChange([BZZ)V

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 448
    :pswitch_21
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    move v3, v13

    goto :goto_b

    :cond_10
    move v3, v2

    .line 454
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    move v2, v13

    .line 455
    :cond_11
    invoke-virtual {v14, v0, v3, v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->btPhoneIncomingInfoChange([BZZ)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 437
    :pswitch_22
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    move v2, v13

    .line 442
    :cond_12
    invoke-virtual {v14, v0, v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->currentVolumeInfoChange(IZ)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 406
    :pswitch_23
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move/from16 v12, v16

    .line 431
    invoke-virtual/range {v0 .. v12}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->deviceStatusInfoChange(IIIIIIIIIIII)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    .line 373
    :pswitch_24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v10, v13

    goto :goto_c

    :cond_13
    move v10, v2

    .line 391
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v11, v13

    goto :goto_d

    :cond_14
    move v11, v2

    .line 393
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move/from16 v25, v13

    move-object/from16 v13, v18

    .line 400
    invoke-virtual/range {v0 .. v13}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->discInfoChange(BIIIIIIZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v25

    :pswitch_25
    move/from16 v25, v13

    .line 366
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->dtvInfoChange()V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v25

    :pswitch_26
    move/from16 v25, v13

    .line 359
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->musicDestroy()V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v25

    :pswitch_27
    move/from16 v25, v13

    .line 308
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v8

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v9

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v10

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v11

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v12

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v20

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move/from16 v22, v25

    goto :goto_e

    :cond_15
    move/from16 v22, v2

    .line 344
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    move/from16 v29, v25

    goto :goto_f

    :cond_16
    move/from16 v29, v2

    :goto_f
    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move-object v11, v13

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-wide/from16 v14, v18

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    move-wide/from16 v19, v23

    move-object/from16 v21, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move/from16 v24, v29

    .line 353
    invoke-virtual/range {v0 .. v24}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->musicInfoChange(BBIIBBBBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JBIZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v25

    :pswitch_28
    move/from16 v25, v13

    .line 301
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->videoDestroy()V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v25

    :pswitch_29
    move/from16 v25, v13

    .line 260
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v8

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v9

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v11

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v12

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v18

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move/from16 v19, v25

    goto :goto_10

    :cond_17
    move/from16 v19, v2

    .line 294
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move v9, v11

    move v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move/from16 v14, v16

    move/from16 v15, v18

    move/from16 v16, v19

    .line 295
    invoke-virtual/range {v0 .. v17}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->videoInfoChange(BBIIBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBZI)V

    .line 296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v25

    :pswitch_2a
    move/from16 v25, v13

    .line 253
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->radioDestroy()V

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v25

    :pswitch_2b
    move/from16 v25, v13

    .line 236
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    .line 247
    invoke-virtual/range {v0 .. v5}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->radioInfoChange(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v25

    :pswitch_2c
    move/from16 v25, v13

    .line 227
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object/from16 v1, p0

    .line 230
    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->canbusInfoChange([B)V

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v25

    :cond_18
    move/from16 v25, v13

    move-object v1, v14

    move-object v0, v15

    .line 222
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v25

    :pswitch_data_0
    .packed-switch 0x1
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
