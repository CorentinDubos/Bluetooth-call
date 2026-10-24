.class public abstract Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;
.super Landroid/os/Binder;
.source "UiServiceCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/UiServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/UiServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.UiServiceCallback"

.field static final TRANSACTION_onA2dpStateChanged:I = 0xa

.field static final TRANSACTION_onAdapterStateChanged:I = 0x2

.field static final TRANSACTION_onAvrcpStateChanged:I = 0xc

.field static final TRANSACTION_onDeviceFound:I = 0x5

.field static final TRANSACTION_onDevicePairFailed:I = 0x8

.field static final TRANSACTION_onDevicePaired:I = 0x6

.field static final TRANSACTION_onDeviceUnpaired:I = 0x7

.field static final TRANSACTION_onDeviceUuidsGot:I = 0x9

.field static final TRANSACTION_onHfpStateChanged:I = 0xb

.field static final TRANSACTION_onSecureSimplePairingRequest:I = 0xd

.field static final TRANSACTION_onServiceReady:I = 0x1

.field static final TRANSACTION_retBluetoothFoundDevices:I = 0xe

.field static final TRANSACTION_retBluetoothPairedDevices:I = 0x3

.field static final TRANSACTION_retBluetoothPairedDevicesExtend:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 332
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 333
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiServiceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 344
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    instance-of v1, v0, Lnfore/android/bt/servicemanager/UiServiceCallback;

    if-eqz v1, :cond_1

    .line 346
    check-cast v0, Lnfore/android/bt/servicemanager/UiServiceCallback;

    return-object v0

    .line 348
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;
    .locals 1

    .line 1142
    sget-object v0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiServiceCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/UiServiceCallback;)Z
    .locals 1

    .line 1135
    sget-object v0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiServiceCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1136
    sput-object p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiServiceCallback;

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

    const v2, 0x5f4e5446

    const/4 v8, 0x1

    const-string v3, "nfore.android.bt.servicemanager.UiServiceCallback"

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 554
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 537
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 548
    invoke-virtual/range {v0 .. v5}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->retBluetoothFoundDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 526
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-virtual {p0, v0, v1}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->onSecureSimplePairingRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 513
    :pswitch_2
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
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->onAvrcpStateChanged(Ljava/lang/String;II)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 500
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 507
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->onHfpStateChanged(Ljava/lang/String;II)V

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 487
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 494
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->onA2dpStateChanged(Ljava/lang/String;II)V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 474
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 481
    invoke-virtual {p0, v0, v2, v1}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->onDeviceUuidsGot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 463
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {p0, v0, v1}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->onDevicePairFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 452
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-virtual {p0, v0, v1}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->onDeviceUnpaired(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 437
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 446
    invoke-virtual {p0, v0, v2, v3, v1}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->onDevicePaired(Ljava/lang/String;Ljava/lang/String;IB)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 422
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 431
    :goto_0
    invoke-virtual {p0, v0, v2, v3, v1}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->onDeviceFound(Ljava/lang/String;Ljava/lang/String;BZ)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 401
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v7

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v9

    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    .line 416
    invoke-virtual/range {v0 .. v7}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->retBluetoothPairedDevicesExtend(I[Ljava/lang/String;[Ljava/lang/String;[I[B[Z[Z)V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 384
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 395
    invoke-virtual/range {v0 .. v5}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->retBluetoothPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 375
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 378
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->onAdapterStateChanged(I)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 366
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 369
    invoke-virtual {p0, v0}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->onServiceReady(I)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    .line 361
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
