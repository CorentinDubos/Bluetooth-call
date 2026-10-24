.class Lnfore/android/bt/servicemanager/IServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IServiceCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/IServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/IServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lnfore/android/bt/servicemanager/IServiceCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p1, p0, Lnfore/android/bt/servicemanager/IServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 346
    iget-object v0, p0, Lnfore/android/bt/servicemanager/IServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "nfore.android.bt.servicemanager.IServiceCallback"

    return-object v0
.end method

.method public onAdapterStateChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IServiceCallback"

    .line 409
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 413
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/IServiceCallback;->onAdapterStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 416
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    throw p1
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;BZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IServiceCallback"

    .line 498
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 502
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget-object v3, p0, Lnfore/android/bt/servicemanager/IServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 504
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 505
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/IServiceCallback;->onDeviceFound(Ljava/lang/String;Ljava/lang/String;BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 508
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    throw p1
.end method

.method public onDevicePairFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IServiceCallback"

    .line 605
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 609
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 610
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/IServiceCallback;->onDevicePairFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 613
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 618
    throw p1
.end method

.method public onDevicePaired(Ljava/lang/String;Ljava/lang/String;IB)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IServiceCallback"

    .line 549
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByte(B)V

    .line 554
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 555
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 556
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/IServiceCallback;->onDevicePaired(Ljava/lang/String;Ljava/lang/String;IB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 559
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 564
    throw p1
.end method

.method public onDeviceUnpaired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IServiceCallback"

    .line 578
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 582
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 583
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/IServiceCallback;->onDeviceUnpaired(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 586
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 591
    throw p1
.end method

.method public onDeviceUuidsGot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IServiceCallback"

    .line 644
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 649
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 650
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IServiceCallback;->onDeviceUuidsGot(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 653
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 658
    throw p1
.end method

.method public onServiceReady(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IServiceCallback"

    .line 372
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 376
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/IServiceCallback;->onServiceReady(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 379
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    throw p1
.end method

.method public retBluetoothPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IServiceCallback"

    .line 460
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 465
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 466
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 467
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 468
    invoke-static {}, Lnfore/android/bt/servicemanager/IServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IServiceCallback;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/IServiceCallback;->retBluetoothPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 471
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 476
    throw p1
.end method
