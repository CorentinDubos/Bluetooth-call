.class public abstract Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;
.super Landroid/os/Binder;
.source "IBluetoothInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.service.IBluetoothInterface"

.field static final TRANSACTION_answerCall:I = 0x27

.field static final TRANSACTION_autoConnect:I = 0xa

.field static final TRANSACTION_autoReply:I = 0xb

.field static final TRANSACTION_callOut:I = 0x2b

.field static final TRANSACTION_connectA2DP:I = 0x16

.field static final TRANSACTION_connectA2DPDev:I = 0x20

.field static final TRANSACTION_connectDevice:I = 0x12

.field static final TRANSACTION_connectHFP:I = 0x23

.field static final TRANSACTION_connectHFPDev:I = 0x24

.field static final TRANSACTION_deletePairedDevice:I = 0x11

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_disconnectA2DP:I = 0x17

.field static final TRANSACTION_disconnectHFP:I = 0x25

.field static final TRANSACTION_enable:I = 0x2

.field static final TRANSACTION_enhancedCallCtrl:I = 0x35

.field static final TRANSACTION_getA2DPConnectedDevAddr:I = 0x21

.field static final TRANSACTION_getA2DPConnectedDevName:I = 0x22

.field static final TRANSACTION_getCallHistoryName:I = 0x41

.field static final TRANSACTION_getCallHistoryTelNumber:I = 0x42

.field static final TRANSACTION_getCallTime:I = 0x31

.field static final TRANSACTION_getCallType:I = 0x43

.field static final TRANSACTION_getCallerNum:I = 0x2e

.field static final TRANSACTION_getConnectedDevAddr:I = 0x14

.field static final TRANSACTION_getConnectedDevName:I = 0x15

.field static final TRANSACTION_getContactNameByTelNumber:I = 0x44

.field static final TRANSACTION_getCount:I = 0x3d

.field static final TRANSACTION_getDuration:I = 0x1f

.field static final TRANSACTION_getFullName:I = 0x3e

.field static final TRANSACTION_getHFPState:I = 0x29

.field static final TRANSACTION_getHostBTAddress:I = 0x4

.field static final TRANSACTION_getHostBTName:I = 0x5

.field static final TRANSACTION_getInquiryState:I = 0x38

.field static final TRANSACTION_getMemoryType:I = 0x40

.field static final TRANSACTION_getPairedDeviceAddress:I = 0xf

.field static final TRANSACTION_getPairedDeviceName:I = 0x10

.field static final TRANSACTION_getPairedDeviceNums:I = 0xe

.field static final TRANSACTION_getPin:I = 0x8

.field static final TRANSACTION_getPosition:I = 0x1e

.field static final TRANSACTION_getTelNumber:I = 0x3f

.field static final TRANSACTION_getVersion:I = 0x9

.field static final TRANSACTION_isA2DPConnected:I = 0x18

.field static final TRANSACTION_isAutoConnect:I = 0xc

.field static final TRANSACTION_isAutoReply:I = 0xd

.field static final TRANSACTION_isDeviceConnected:I = 0x13

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isHFPConnected:I = 0x26

.field static final TRANSACTION_isMicMute:I = 0x34

.field static final TRANSACTION_isPhoneOrDevice:I = 0x33

.field static final TRANSACTION_isPlaying:I = 0x19

.field static final TRANSACTION_isSyncCallLogNow:I = 0x3a

.field static final TRANSACTION_isSyncPhoneBookNow:I = 0x39

.field static final TRANSACTION_muteMic:I = 0x2d

.field static final TRANSACTION_next:I = 0x1d

.field static final TRANSACTION_pause:I = 0x1b

.field static final TRANSACTION_play:I = 0x1a

.field static final TRANSACTION_prev:I = 0x1c

.field static final TRANSACTION_queryCallHistory:I = 0x3c

.field static final TRANSACTION_queryContact:I = 0x3b

.field static final TRANSACTION_reDial:I = 0x2c

.field static final TRANSACTION_registerCallBack:I = 0x45

.field static final TRANSACTION_rejectCall:I = 0x28

.field static final TRANSACTION_sendDTMF:I = 0x2f

.field static final TRANSACTION_setHostBTName:I = 0x6

.field static final TRANSACTION_setPin:I = 0x7

.field static final TRANSACTION_startDevInquiry:I = 0x36

.field static final TRANSACTION_stopDevInquiry:I = 0x37

.field static final TRANSACTION_switchDevOrPhone:I = 0x32

.field static final TRANSACTION_syncPhonebook:I = 0x30

.field static final TRANSACTION_terminateCall:I = 0x2a


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 308
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.service.IBluetoothInterface"

    .line 309
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.IBluetoothInterface"

    .line 320
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 321
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    if-eqz v1, :cond_1

    .line 322
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    return-object v0

    .line 324
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;
    .locals 1

    .line 2451
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;)Z
    .locals 1

    .line 2444
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2445
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface;

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

    const-string v2, "com.hzbhd.midwareproxy.binder.service.IBluetoothInterface"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 941
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 932
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 935
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->registerCallBack(Landroid/os/IBinder;)V

    .line 936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 922
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 925
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getContactNameByTelNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 912
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 915
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getCallType(I)I

    move-result p1

    .line 916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 902
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 905
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getCallHistoryTelNumber(I)Ljava/lang/String;

    move-result-object p1

    .line 906
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 892
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 895
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getCallHistoryName(I)Ljava/lang/String;

    move-result-object p1

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 882
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 885
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getMemoryType(I)I

    move-result p1

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 872
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 875
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getTelNumber(I)Ljava/lang/String;

    move-result-object p1

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 862
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 865
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getFullName(I)Ljava/lang/String;

    move-result-object p1

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 854
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getCount()I

    move-result p1

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 846
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->queryCallHistory()I

    move-result p1

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 838
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->queryContact()I

    move-result p1

    .line 840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 830
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->isSyncCallLogNow()Z

    move-result p1

    .line 832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 822
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->isSyncPhoneBookNow()Z

    move-result p1

    .line 824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 814
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getInquiryState()Z

    move-result p1

    .line 816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 806
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->stopDevInquiry()Z

    move-result p1

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 798
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->startDevInquiry()Z

    move-result p1

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 788
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 791
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->enhancedCallCtrl(I)Z

    move-result p1

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 780
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->isMicMute()Z

    move-result p1

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 772
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->isPhoneOrDevice()I

    move-result p1

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 762
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 765
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->switchDevOrPhone(I)Z

    move-result p1

    .line 766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 754
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getCallTime()I

    move-result p1

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 744
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 747
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->syncPhonebook(I)Z

    move-result p1

    .line 748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 734
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 737
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->sendDTMF(B)Z

    move-result p1

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 726
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getCallerNum()Ljava/lang/String;

    move-result-object p1

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 716
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 719
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->muteMic(Z)Z

    move-result p1

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 708
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->reDial()Z

    move-result p1

    .line 710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 698
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 701
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->callOut(Ljava/lang/String;)Z

    move-result p1

    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 690
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->terminateCall()Z

    move-result p1

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 682
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getHFPState()I

    move-result p1

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 674
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->rejectCall()Z

    move-result p1

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 666
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->answerCall()Z

    move-result p1

    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 658
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->isHFPConnected()Z

    move-result p1

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 650
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->disconnectHFP()Z

    move-result p1

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 640
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 643
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->connectHFPDev(Ljava/lang/String;)Z

    move-result p1

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 632
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->connectHFP()Z

    move-result p1

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 624
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getA2DPConnectedDevName()Ljava/lang/String;

    move-result-object p1

    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 616
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getA2DPConnectedDevAddr()Ljava/lang/String;

    move-result-object p1

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 606
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 609
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->connectA2DPDev(Ljava/lang/String;)Z

    move-result p1

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 598
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getDuration()I

    move-result p1

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 590
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getPosition()I

    move-result p1

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 582
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->next()Z

    move-result p1

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 574
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->prev()Z

    move-result p1

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 566
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->pause()Z

    move-result p1

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 558
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->play()Z

    move-result p1

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 550
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->isPlaying()Z

    move-result p1

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 542
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->isA2DPConnected()Z

    move-result p1

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 534
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->disconnectA2DP()Z

    move-result p1

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 526
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->connectA2DP()Z

    move-result p1

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 518
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getConnectedDevName()Ljava/lang/String;

    move-result-object p1

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 510
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getConnectedDevAddr()Ljava/lang/String;

    move-result-object p1

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 502
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->isDeviceConnected()Z

    move-result p1

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 492
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 495
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->connectDevice(Ljava/lang/String;)Z

    move-result p1

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 482
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 485
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->deletePairedDevice(Ljava/lang/String;)Z

    move-result p1

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 472
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 475
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getPairedDeviceName(I)Ljava/lang/String;

    move-result-object p1

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 462
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 465
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getPairedDeviceAddress(I)Ljava/lang/String;

    move-result-object p1

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 454
    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getPairedDeviceNums()I

    move-result p1

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 446
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->isAutoReply()Z

    move-result p1

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 438
    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->isAutoConnect()Z

    move-result p1

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 428
    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 431
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->autoReply(Z)Z

    move-result p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 418
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 421
    :cond_2
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->autoConnect(Z)Z

    move-result p1

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 410
    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getVersion()Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 402
    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getPin()Ljava/lang/String;

    move-result-object p1

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 392
    :pswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->setPin(Ljava/lang/String;)Z

    move-result p1

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 382
    :pswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 385
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->setHostBTName(Ljava/lang/String;)Z

    move-result p1

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 374
    :pswitch_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getHostBTName()Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 366
    :pswitch_41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->getHostBTAddress()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 358
    :pswitch_42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->disable()Z

    move-result p1

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 350
    :pswitch_43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->enable()Z

    move-result p1

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 342
    :pswitch_44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IBluetoothInterface$Stub;->isEnabled()Z

    move-result p1

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 337
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
