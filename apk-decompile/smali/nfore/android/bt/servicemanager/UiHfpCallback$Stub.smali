.class public abstract Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;
.super Landroid/os/Binder;
.source "UiHfpCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/UiHfpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/UiHfpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/UiHfpCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.UiHfpCallback"

.field static final TRANSACTION_onHfpActiveNumberChanged:I = 0x14

.field static final TRANSACTION_onHfpAtDownloadPhonebookStateChanged:I = 0xd

.field static final TRANSACTION_onHfpAtDownloadSMSStateChanged:I = 0xe

.field static final TRANSACTION_onHfpCallStateChanged:I = 0x15

.field static final TRANSACTION_onHfpErrorResponse:I = 0x4

.field static final TRANSACTION_onHfpIncomingCallNumber:I = 0xf

.field static final TRANSACTION_onHfpMicSelectionChanged:I = 0x17

.field static final TRANSACTION_onHfpMicVolumeChanged:I = 0x12

.field static final TRANSACTION_onHfpMuteStateChanged:I = 0x16

.field static final TRANSACTION_onHfpOutgoingCallNumber:I = 0x10

.field static final TRANSACTION_onHfpRemoteDeviceBatteryStatusChanged:I = 0xb

.field static final TRANSACTION_onHfpRemoteDevicePhoneNumberChanged:I = 0x6

.field static final TRANSACTION_onHfpRemoteDeviceRoamStatusChanged:I = 0xa

.field static final TRANSACTION_onHfpRemoteDeviceServiceStatusChanged:I = 0x9

.field static final TRANSACTION_onHfpRemoteDeviceSignalStatusChanged:I = 0xc

.field static final TRANSACTION_onHfpScoStateChanged:I = 0x2

.field static final TRANSACTION_onHfpSpeakerVolumeChanged:I = 0x11

.field static final TRANSACTION_onHfpStateChanged:I = 0x1

.field static final TRANSACTION_onHfpVoiceControlStateChanged:I = 0x3

.field static final TRANSACTION_retHfpRemoteDeviceInfo:I = 0x5

.field static final TRANSACTION_retHfpRemoteDeviceNetworkOperator:I = 0x7

.field static final TRANSACTION_retHfpRemoteDeviceSubscriberNumber:I = 0x8

.field static final TRANSACTION_retPbapQueryName:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 313
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.UiHfpCallback"

    .line 314
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiHfpCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.UiHfpCallback"

    .line 325
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 326
    instance-of v1, v0, Lnfore/android/bt/servicemanager/UiHfpCallback;

    if-eqz v1, :cond_1

    .line 327
    check-cast v0, Lnfore/android/bt/servicemanager/UiHfpCallback;

    return-object v0

    .line 329
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/UiHfpCallback;
    .locals 1

    .line 1415
    sget-object v0, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiHfpCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/UiHfpCallback;)Z
    .locals 1

    .line 1408
    sget-object v0, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiHfpCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1409
    sput-object p0, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiHfpCallback;

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

    const v2, 0x5f4e5446

    const/4 v6, 0x1

    const-string v3, "nfore.android.bt.servicemanager.UiHfpCallback"

    if-eq p1, v2, :cond_6

    const/4 v2, 0x0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 652
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 639
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 646
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpMicSelectionChanged(Ljava/lang/String;II)V

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 626
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 633
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpMuteStateChanged(Ljava/lang/String;II)V

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 613
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 620
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpCallStateChanged(Ljava/lang/String;II)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 600
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpActiveNumberChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 585
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v4, v6

    .line 594
    :cond_0
    invoke-virtual {p0, v0, v2, v3, v4}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->retPbapQueryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 572
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpMicVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 559
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpSpeakerVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 548
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-virtual {p0, v0, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpOutgoingCallNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 537
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-virtual {p0, v0, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpIncomingCallNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 526
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 531
    invoke-virtual {p0, v0, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpAtDownloadSMSStateChanged(Ljava/lang/String;I)V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 513
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 520
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpAtDownloadPhonebookStateChanged(Ljava/lang/String;II)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 496
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    .line 507
    invoke-virtual/range {v0 .. v5}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpRemoteDeviceSignalStatusChanged(Ljava/lang/String;IIII)V

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 479
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    .line 490
    invoke-virtual/range {v0 .. v5}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpRemoteDeviceBatteryStatusChanged(Ljava/lang/String;IIII)V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 468
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v4, v6

    .line 473
    :cond_1
    invoke-virtual {p0, v0, v4}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpRemoteDeviceRoamStatusChanged(Ljava/lang/String;Z)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 457
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v4, v6

    .line 462
    :cond_2
    invoke-virtual {p0, v0, v4}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpRemoteDeviceServiceStatusChanged(Ljava/lang/String;Z)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 442
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 451
    invoke-virtual {p0, v0, v2, v3, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->retHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;Ljava/lang/String;II)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 427
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-virtual {p0, v0, v2, v3, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->retHfpRemoteDeviceNetworkOperator(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 416
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 420
    sget-object v2, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 421
    invoke-virtual {p0, v0, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpRemoteDevicePhoneNumberChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 400
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    sget-object v2, Lnfore/android/bt/servicemanager/HfpStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lnfore/android/bt/servicemanager/HfpStatusInfo;

    .line 410
    :cond_3
    invoke-virtual {p0, v0, v2}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->retHfpRemoteDeviceInfo(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpStatusInfo;)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 384
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 389
    sget-object v2, Lnfore/android/bt/servicemanager/HfpErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lnfore/android/bt/servicemanager/HfpErrorInfo;

    .line 394
    :cond_4
    invoke-virtual {p0, v0, v2}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpErrorResponse(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpErrorInfo;)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 373
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v4, v6

    .line 378
    :cond_5
    invoke-virtual {p0, v0, v4}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpVoiceControlStateChanged(Ljava/lang/String;Z)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 360
    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 367
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpScoStateChanged(Ljava/lang/String;II)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 347
    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiHfpCallback$Stub;->onHfpStateChanged(Ljava/lang/String;II)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 342
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :pswitch_data_0
    .packed-switch 0x1
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
