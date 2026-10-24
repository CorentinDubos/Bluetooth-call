.class public abstract Lnfore/android/bt/servicemanager/IHfpCallback$Stub;
.super Landroid/os/Binder;
.source "IHfpCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/IHfpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/IHfpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/IHfpCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.IHfpCallback"

.field static final TRANSACTION_onHfpActiveNumberChanged:I = 0x13

.field static final TRANSACTION_onHfpAtDownloadPhonebookStateChanged:I = 0xd

.field static final TRANSACTION_onHfpAtDownloadSMSStateChanged:I = 0xe

.field static final TRANSACTION_onHfpErrorResponse:I = 0x4

.field static final TRANSACTION_onHfpIncomingCallNumber:I = 0xf

.field static final TRANSACTION_onHfpMicVolumeChanged:I = 0x12

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 291
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.IHfpCallback"

    .line 292
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IHfpCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.IHfpCallback"

    .line 303
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    instance-of v1, v0, Lnfore/android/bt/servicemanager/IHfpCallback;

    if-eqz v1, :cond_1

    .line 305
    check-cast v0, Lnfore/android/bt/servicemanager/IHfpCallback;

    return-object v0

    .line 307
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/IHfpCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/IHfpCallback;
    .locals 1

    .line 1240
    sget-object v0, Lnfore/android/bt/servicemanager/IHfpCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IHfpCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/IHfpCallback;)Z
    .locals 1

    .line 1233
    sget-object v0, Lnfore/android/bt/servicemanager/IHfpCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IHfpCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1234
    sput-object p0, Lnfore/android/bt/servicemanager/IHfpCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IHfpCallback;

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

    const-string v3, "nfore.android.bt.servicemanager.IHfpCallback"

    if-eq p1, v2, :cond_5

    const/4 v2, 0x0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 576
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 563
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpActiveNumberChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 550
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpMicVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 537
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpSpeakerVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 526
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-virtual {p0, v0, v1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpOutgoingCallNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 515
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-virtual {p0, v0, v1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpIncomingCallNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 504
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 509
    invoke-virtual {p0, v0, v1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpAtDownloadSMSStateChanged(Ljava/lang/String;I)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 491
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 498
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpAtDownloadPhonebookStateChanged(Ljava/lang/String;II)V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 474
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    .line 485
    invoke-virtual/range {v0 .. v5}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpRemoteDeviceSignalStatusChanged(Ljava/lang/String;IIII)V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 457
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    .line 468
    invoke-virtual/range {v0 .. v5}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpRemoteDeviceBatteryStatusChanged(Ljava/lang/String;IIII)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 446
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v4, v6

    .line 451
    :cond_0
    invoke-virtual {p0, v0, v4}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpRemoteDeviceRoamStatusChanged(Ljava/lang/String;Z)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 435
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v4, v6

    .line 440
    :cond_1
    invoke-virtual {p0, v0, v4}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpRemoteDeviceServiceStatusChanged(Ljava/lang/String;Z)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 420
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 429
    invoke-virtual {p0, v0, v2, v3, v1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->retHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;Ljava/lang/String;II)V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 405
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-virtual {p0, v0, v2, v3, v1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->retHfpRemoteDeviceNetworkOperator(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 394
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 398
    sget-object v2, Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 399
    invoke-virtual {p0, v0, v1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpRemoteDevicePhoneNumberChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 378
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    sget-object v2, Lnfore/android/bt/servicemanager/HfpStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lnfore/android/bt/servicemanager/HfpStatusInfo;

    .line 388
    :cond_2
    invoke-virtual {p0, v0, v2}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->retHfpRemoteDeviceInfo(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpStatusInfo;)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 362
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 367
    sget-object v2, Lnfore/android/bt/servicemanager/HfpErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lnfore/android/bt/servicemanager/HfpErrorInfo;

    .line 372
    :cond_3
    invoke-virtual {p0, v0, v2}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpErrorResponse(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpErrorInfo;)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 351
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v4, v6

    .line 356
    :cond_4
    invoke-virtual {p0, v0, v4}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpVoiceControlStateChanged(Ljava/lang/String;Z)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 338
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 345
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpScoStateChanged(Ljava/lang/String;II)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 325
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/IHfpCallback$Stub;->onHfpStateChanged(Ljava/lang/String;II)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 320
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
