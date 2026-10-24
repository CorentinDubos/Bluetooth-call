.class Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;
.super Ljava/lang/Object;
.source "UiServiceCommand.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/UiServiceCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lnfore/android/bt/servicemanager/UiServiceCommand;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 5477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5478
    iput-object p1, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addBleListener(Lnfore/android/bt/servicemanager/BleCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12607
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 12608
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/BleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 12609
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12610
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12611
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->addBleListener(Lnfore/android/bt/servicemanager/BleCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 12614
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 12617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12619
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 5482
    iget-object v0, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public avrcpPlayOrPause()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11776
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11777
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11778
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11779
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->avrcpPlayOrPause()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11781
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11782
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11785
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11787
    throw v2
.end method

.method public bleConn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12531
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12533
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12534
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12535
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12536
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->bleConn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 12539
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 12542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12544
    throw p1
.end method

.method public bleDisConn(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12551
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12552
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12553
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12554
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12555
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->bleDisConn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 12558
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 12561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12563
    throw p1
.end method

.method public bleScanStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12475
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12476
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12477
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12478
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->bleScanStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 12481
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 12484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12486
    throw v2
.end method

.method public bleScanStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12493
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12494
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12495
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12496
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->bleScanStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 12499
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 12502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12504
    throw v2
.end method

.method public disableA2dp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12663
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12664
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x100

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12665
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12666
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->disableA2dp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 12669
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 12672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12674
    throw v2
.end method

.method public enableA2dp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12645
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12646
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12647
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12648
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->enableA2dp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 12651
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 12654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12656
    throw v2
.end method

.method public enterBluetoothTestMode()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12333
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12334
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xef

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12335
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12336
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->enterBluetoothTestMode()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12338
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12339
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 12342
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 12342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12344
    throw v2
.end method

.method public getA2dpConnectedDeviceAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8739
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8740
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8741
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8742
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getA2dpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 8744
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8745
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 8748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8750
    throw v2
.end method

.method public getA2dpCurrentState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8765
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8766
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8767
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8768
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getA2dpCurrentState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8770
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8771
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8776
    throw v2
.end method

.method public getAppleDeviceAuthState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11237
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11238
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11239
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11240
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getAppleDeviceAuthState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11242
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11243
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11248
    throw v2
.end method

.method public getAutoConnectionStatus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11574
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11575
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11576
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11577
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getAutoConnectionStatus()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11579
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11580
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11585
    throw v2
.end method

.method public getAvrcpConnectedDeviceAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8884
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8888
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8889
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8890
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8891
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getAvrcpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 8893
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8894
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 8897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8899
    throw v2
.end method

.method public getAvrcpCurrentState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8791
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8792
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8793
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8794
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getAvrcpCurrentState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8796
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8797
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8802
    throw v2
.end method

.method public getBluetoothCurrentState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6002
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6003
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6004
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6005
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getBluetoothCurrentState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6007
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6008
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6013
    throw v2
.end method

.method public getBluetoothLocalAdapterAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5920
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5921
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5922
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5923
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getBluetoothLocalAdapterAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 5925
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5926
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 5929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5931
    throw v2
.end method

.method public getBluetoothLocalAdapterName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5865
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5866
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5867
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5868
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 5870
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5871
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 5874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5876
    throw v2
.end method

.method public getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5894
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5895
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5896
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5897
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5898
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 5900
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5901
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5906
    throw p1
.end method

.method public getCalibrationClick()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12274
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12275
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xec

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12276
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12277
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCalibrationClick()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12279
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12280
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12285
    throw v2
.end method

.method public getCalibrationState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12254
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12255
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xeb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12256
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12257
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCalibrationState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12259
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12260
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12265
    throw v2
.end method

.method public getCallTime(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11654
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11655
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11656
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11657
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11658
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCallTime(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 11660
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11661
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 11664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11666
    throw p1
.end method

.method public getCallerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11675
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11676
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11677
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xce

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11678
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11679
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCallerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 11681
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11682
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 11685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11687
    throw p1
.end method

.method public getConnectedHfpDeviceCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11039
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11040
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xae

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11041
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11042
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getConnectedHfpDeviceCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11044
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11045
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11050
    throw v2
.end method

.method public getCurrentCallNumber()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11594
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11595
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xca

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11596
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11597
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 11599
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11600
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 11603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11605
    throw v2
.end method

.method public getCurrentImei()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12294
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12295
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xed

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12296
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12297
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCurrentImei()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 12299
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12300
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 12303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12305
    throw v2
.end method

.method public getCurrentSource()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11796
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11797
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11798
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11799
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCurrentSource()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 11801
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11802
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 11805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11807
    throw v2
.end method

.method public getCurrentSyncState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11736
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11737
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11738
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11739
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCurrentSyncState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11741
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11742
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11747
    throw v2
.end method

.method public getCurrentSyncType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11716
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11717
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11718
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11719
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getCurrentSyncType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11721
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11722
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11727
    throw v2
.end method

.method public getDeviceX()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11954
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11955
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11956
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11957
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getDeviceX()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11959
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11960
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11965
    throw v2
.end method

.method public getDeviceY()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11974
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11975
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11976
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11977
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getDeviceY()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11979
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11980
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11985
    throw v2
.end method

.method public getHCaliX1()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12074
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12075
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12076
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12077
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHCaliX1()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12079
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12080
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12085
    throw v2
.end method

.method public getHCaliX2()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12094
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12095
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12096
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12097
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHCaliX2()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12099
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12100
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12105
    throw v2
.end method

.method public getHCaliY1()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12114
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12115
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12116
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12117
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHCaliY1()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12119
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12120
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12125
    throw v2
.end method

.method public getHCaliY2()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12134
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12135
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12136
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12137
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHCaliY2()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12139
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12145
    throw v2
.end method

.method public getHXPhoneLen()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11994
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11995
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xde

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11996
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11997
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHXPhoneLen()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11999
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12000
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12005
    throw v2
.end method

.method public getHYPhoneLen()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12014
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12015
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12016
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12017
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHYPhoneLen()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12019
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12020
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12025
    throw v2
.end method

.method public getHfpCallCounts()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11554
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11555
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11556
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11557
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpCallCounts()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11559
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11560
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11565
    throw v2
.end method

.method public getHfpCallState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11534
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11535
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11536
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11537
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpCallState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11539
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11540
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11545
    throw v2
.end method

.method public getHfpConnectedDeviceAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6468
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6469
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6470
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6471
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 6473
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6474
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 6477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6479
    throw v2
.end method

.method public getHfpConnectedDeviceVendorID()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11257
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11258
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11259
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11260
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpConnectedDeviceVendorID()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 11262
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11263
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 11266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11268
    throw v2
.end method

.method public getHfpCurrentScoState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6522
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6524
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6525
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6526
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpCurrentScoState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6528
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6529
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6534
    throw p1
.end method

.method public getHfpCurrentState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6495
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6497
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6498
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6499
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6501
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6502
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6507
    throw p1
.end method

.method public getHfpMicSelection()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11494
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11495
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11496
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11497
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpMicSelection()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11499
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11500
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11505
    throw v2
.end method

.method public getHfpRemoteDeviceBatteryStatus(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7102
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7103
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7104
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpRemoteDeviceBatteryStatus(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7106
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7107
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 7110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7112
    throw p1
.end method

.method public getHfpRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6926
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6927
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6928
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6929
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6930
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 6932
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6933
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 6936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6938
    throw p1
.end method

.method public getHfpRemoteDeviceSignalStatus(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7128
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7130
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7131
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7132
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHfpRemoteDeviceSignalStatus(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7134
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7135
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 7138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7140
    throw p1
.end method

.method public getHidCurrentState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10918
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10919
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10920
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10921
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHidCurrentState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10923
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10924
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10929
    throw v2
.end method

.method public getHspConnectedDeviceAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7447
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7448
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7449
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7450
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHspConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 7452
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7453
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 7456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7458
    throw v2
.end method

.method public getHspCurrentScoState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7500
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7501
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7502
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7503
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7504
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHspCurrentScoState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7506
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 7510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7512
    throw p1
.end method

.method public getHspCurrentState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7473
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7475
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7476
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7477
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getHspCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7479
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 7483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7485
    throw p1
.end method

.method public getImportVCardState()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11756
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11757
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11758
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11759
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getImportVCardState()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11761
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11762
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11765
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11767
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "nfore.android.bt.servicemanager.UiServiceCommand"

    return-object v0
.end method

.method public getLastCallNumber()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11614
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11615
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11616
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11617
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getLastCallNumber()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 11619
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11620
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 11623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11625
    throw v2
.end method

.method public getMapCurrentState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8555
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8556
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8557
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8558
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8559
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getMapCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8561
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8562
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 8565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8567
    throw p1
.end method

.method public getMapRegisterState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8583
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8585
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8586
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8587
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getMapRegisterState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8589
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8590
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 8593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8595
    throw p1
.end method

.method public getPCaliX1()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12154
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12155
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12156
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12157
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPCaliX1()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12159
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12160
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12165
    throw v2
.end method

.method public getPCaliX2()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12174
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12175
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12176
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12177
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPCaliX2()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12179
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12180
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12185
    throw v2
.end method

.method public getPCaliY1()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12194
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12195
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12196
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12197
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPCaliY1()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12199
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12200
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12205
    throw v2
.end method

.method public getPCaliY2()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12214
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12215
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12216
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12217
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPCaliY2()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12219
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12220
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12225
    throw v2
.end method

.method public getPXPhoneLen()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12034
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12035
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12036
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12037
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPXPhoneLen()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12043
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12039
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12040
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12043
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12043
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12045
    throw v2
.end method

.method public getPYPhoneLen()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12054
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12055
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12056
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12057
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPYPhoneLen()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12059
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12060
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 12063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12065
    throw v2
.end method

.method public getPanConnectedDeviceAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10668
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10669
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10670
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10671
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPanConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 10673
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10674
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 10677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10679
    throw v2
.end method

.method public getPanCurrentState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10694
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10695
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10696
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10697
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPanCurrentState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10699
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10700
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10705
    throw v2
.end method

.method public getPbapCurrentState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8198
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8200
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8201
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8202
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPbapCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8204
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8205
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 8208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8210
    throw p1
.end method

.method public getPhoneResolution()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11934
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11935
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11936
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11937
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPhoneResolution()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 11939
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11940
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 11943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11945
    throw v2
.end method

.method public getPhoneScreenState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11894
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11895
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11896
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11897
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPhoneScreenState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11899
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11900
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11905
    throw v2
.end method

.method public getPhoneScreenType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11914
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11915
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xda

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11916
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11917
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPhoneScreenType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11919
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11920
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11925
    throw v2
.end method

.method public getPinCode()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11415
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11416
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11417
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11418
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getPinCode()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 11420
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11421
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 11424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11426
    throw v2
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11435
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11436
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11437
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11438
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 11440
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11441
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 11444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11446
    throw v2
.end method

.method public getSppCurrentState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11121
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11122
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11123
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getSppCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 11125
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11126
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 11129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11131
    throw p1
.end method

.method public getTargetAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10963
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10964
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xab

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10965
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10966
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getTargetAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 10968
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10969
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 10972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10974
    throw v2
.end method

.method public getThreeWayCallNumber()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11634
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11635
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11636
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11637
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getThreeWayCallNumber()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 11639
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11640
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 11643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11645
    throw v2
.end method

.method public getThreeWayCallTime()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11696
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11697
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11698
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11699
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->getThreeWayCallTime()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11701
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11702
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11707
    throw v2
.end method

.method public isA2dpNativeRunning()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10493
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10494
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10495
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10496
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isA2dpNativeRunning()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10498
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10499
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 10502
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 10502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10504
    throw v2
.end method

.method public isA2dpPlaying()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11852
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11853
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11854
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11855
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isA2dpPlaying()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11857
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11858
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11861
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11863
    throw v2
.end method

.method public isAAConnected()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12702
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12703
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x102

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12704
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12705
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isAAConnected()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12707
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12708
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 12711
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 12711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12713
    throw v2
.end method

.method public isAlreadyReadPairedDevices()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11297
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11298
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11299
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11300
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isAlreadyReadPairedDevices()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11302
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11303
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11306
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11308
    throw v2
.end method

.method public isAppleDeviceFinishAuth()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11217
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11218
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11219
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11220
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isAppleDeviceFinishAuth()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11222
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11223
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11226
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11228
    throw v2
.end method

.method public isAvrcp13Supported(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8916
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8917
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8918
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8919
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8920
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isAvrcp13Supported(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8922
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8923
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8926
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8928
    throw p1
.end method

.method public isAvrcp14Supported(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8945
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8946
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8947
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8948
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8949
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isAvrcp14Supported(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8955
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8951
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8952
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8955
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8955
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8957
    throw p1
.end method

.method public isAvrcpBrowsingChannelEstablished(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10377
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10379
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10380
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10381
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isAvrcpBrowsingChannelEstablished(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10383
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10384
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 10387
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10389
    throw p1
.end method

.method public isBluetoothAutoReconnectEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6138
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6139
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6140
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6141
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isBluetoothAutoReconnectEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6143
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 6147
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 6147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6149
    throw v2
.end method

.method public isBluetoothDiscoverable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6052
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6053
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6054
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6055
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isBluetoothDiscoverable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6057
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6058
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 6061
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 6061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6063
    throw v2
.end method

.method public isBluetoothEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5972
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5973
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5974
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5975
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isBluetoothEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5977
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5978
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5981
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5983
    throw v2
.end method

.method public isBluetoothScanning()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6027
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6028
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6029
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6030
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isBluetoothScanning()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6032
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6033
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 6036
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 6036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6038
    throw v2
.end method

.method public isCalibration()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12234
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12235
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xea

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12236
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12237
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isCalibration()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12239
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12240
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 12243
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 12243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12245
    throw v2
.end method

.method public isCallingFlag()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12396
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12397
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12398
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12399
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isCallingFlag()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12401
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12402
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 12405
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 12405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12407
    throw v2
.end method

.method public isDevicePaired(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12722
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12723
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12724
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x103

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12725
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12726
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isDevicePaired(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 12728
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12729
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 12732
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 12732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12734
    throw p1
.end method

.method public isFirstBootUp()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11099
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11100
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11101
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11102
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isFirstBootUp()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11104
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11105
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11108
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11110
    throw v2
.end method

.method public isForiPodDisconnectA2DP()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11317
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11318
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11319
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11320
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isForiPodDisconnectA2DP()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11322
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11323
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11326
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11328
    throw v2
.end method

.method public isHfpAutoAnswer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11277
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11278
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xba

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11279
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11280
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isHfpAutoAnswer()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11282
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11283
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11286
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11288
    throw v2
.end method

.method public isHfpConnectedAppleDevice()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11197
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11198
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11199
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11200
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isHfpConnectedAppleDevice()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11202
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11203
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11206
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11208
    throw v2
.end method

.method public isHfpRemoteDeviceOnRoaming(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7072
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7073
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7074
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7075
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7076
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isHfpRemoteDeviceOnRoaming(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7078
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7079
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7082
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7084
    throw p1
.end method

.method public isHfpRemoteDeviceTelecomServiceOn(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7044
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7045
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7046
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7047
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7048
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isHfpRemoteDeviceTelecomServiceOn(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7050
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7051
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7054
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7056
    throw p1
.end method

.method public isHfpVoiceControlOn(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6549
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6551
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6552
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6553
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isHfpVoiceControlOn(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6555
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6556
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6559
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6561
    throw p1
.end method

.method public isMapNotificationRegistered(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8423
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8425
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8426
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8427
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isMapNotificationRegistered(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8429
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8430
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8433
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8435
    throw p1
.end method

.method public isMicMute()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12416
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12417
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12418
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12419
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isMicMute()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12421
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12422
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 12425
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 12425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12427
    throw v2
.end method

.method public isPhoneBookLoading()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12436
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12437
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12438
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12439
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isPhoneBookLoading()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12441
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12442
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 12445
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 12445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12447
    throw v2
.end method

.method public isPhonebookAutoSync()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11337
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11338
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11339
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11340
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isPhonebookAutoSync()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11342
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11346
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11348
    throw v2
.end method

.method public isRing()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12456
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12457
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12458
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12459
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isRing()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12461
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12462
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 12465
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 12465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12467
    throw v2
.end method

.method public isScan()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12512
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12513
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12514
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12515
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isScan()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 12517
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12518
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 12521
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 12521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12523
    throw v2
.end method

.method public isSppConnected(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7874
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7876
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7877
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7878
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isSppConnected(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7880
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7881
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7884
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7886
    throw p1
.end method

.method public isTwinConnectEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11357
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11358
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11359
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11360
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->isTwinConnectEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11362
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11363
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11366
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11368
    throw v2
.end method

.method public refreshConn()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12570
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12571
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12572
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12573
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->refreshConn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 12576
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 12579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12581
    throw v2
.end method

.method public registerA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/UiA2dpCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8614
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 8615
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8616
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8617
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8618
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/UiA2dpCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8620
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8621
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 8624
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8626
    throw p1
.end method

.method public registerHfpCallback(Lnfore/android/bt/servicemanager/UiHfpCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6351
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6352
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiHfpCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6353
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6354
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6355
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerHfpCallback(Lnfore/android/bt/servicemanager/UiHfpCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6357
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6358
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 6361
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6363
    throw p1
.end method

.method public registerHidCallback(Lnfore/android/bt/servicemanager/UiHidCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10724
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 10725
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiHidCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10726
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10727
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10728
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerHidCallback(Lnfore/android/bt/servicemanager/UiHidCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10730
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10731
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 10734
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10736
    throw p1
.end method

.method public registerHspCallback(Lnfore/android/bt/servicemanager/UiHspCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7328
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7329
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiHspCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7330
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7331
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7332
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerHspCallback(Lnfore/android/bt/servicemanager/UiHspCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7334
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7335
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 7338
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7340
    throw p1
.end method

.method public registerMapCallback(Lnfore/android/bt/servicemanager/UiMapCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8229
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 8230
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiMapCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8231
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8232
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8233
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerMapCallback(Lnfore/android/bt/servicemanager/UiMapCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8235
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8236
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 8239
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8241
    throw p1
.end method

.method public registerNforeServiceCallback(Lnfore/android/bt/servicemanager/UiServiceCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5502
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5503
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5504
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5505
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5506
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerNforeServiceCallback(Lnfore/android/bt/servicemanager/UiServiceCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5508
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5509
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    move v3, v4

    .line 5512
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 5512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5514
    throw p1
.end method

.method public registerPanCallback(Lnfore/android/bt/servicemanager/UiPanCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10546
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 10547
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiPanCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10548
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10549
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10550
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerPanCallback(Lnfore/android/bt/servicemanager/UiPanCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10552
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10553
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 10556
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10558
    throw p1
.end method

.method public registerPbapCallback(Lnfore/android/bt/servicemanager/UiPbapCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7933
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7934
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiPbapCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7935
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7936
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7937
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerPbapCallback(Lnfore/android/bt/servicemanager/UiPbapCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7939
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7940
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 7943
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7945
    throw p1
.end method

.method public registerSppCallback(Lnfore/android/bt/servicemanager/UiSppCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7735
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7736
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiSppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7737
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7738
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7739
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->registerSppCallback(Lnfore/android/bt/servicemanager/UiSppCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7741
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7742
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 7745
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7747
    throw p1
.end method

.method public removeBleListener(Lnfore/android/bt/servicemanager/BleCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12626
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 12627
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/BleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 12628
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12629
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12630
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->removeBleListener(Lnfore/android/bt/servicemanager/BleCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 12633
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 12636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12638
    throw p1
.end method

.method public reqA2dpConnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8678
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8680
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8681
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8682
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqA2dpConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8684
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8685
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8688
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8690
    throw p1
.end method

.method public reqA2dpDisconnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8711
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8713
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8714
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8715
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqA2dpDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8717
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8718
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8721
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8723
    throw p1
.end method

.method public reqAvrcpAbortMetadataReceiving(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9708
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9710
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9711
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9712
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpAbortMetadataReceiving(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9714
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9715
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9718
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9720
    throw p1
.end method

.method public reqAvrcpAddToNowPlaying(Ljava/lang/String;BIJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10346
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 10347
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, p2

    .line 10348
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByte(B)V

    move v6, p3

    .line 10349
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v7, p4

    .line 10350
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, p0

    .line 10351
    :try_start_1
    iget-object v3, v9, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x96

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10352
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10353
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpAddToNowPlaying(Ljava/lang/String;BIJ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10359
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 10360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 10355
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 10356
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 10359
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 10360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v10

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v9, p0

    .line 10359
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 10360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10361
    throw v0
.end method

.method public reqAvrcpBackward(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9092
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9096
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9097
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9098
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9099
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9100
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpBackward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9102
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9103
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9106
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9108
    throw p1
.end method

.method public reqAvrcpChangePath(Ljava/lang/String;IJB)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10152
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 10153
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, p2

    .line 10154
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v6, p3

    .line 10155
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v8, p5

    .line 10156
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, p0

    .line 10157
    :try_start_1
    iget-object v3, v9, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x92

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10158
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10159
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpChangePath(Ljava/lang/String;IJB)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10165
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 10166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 10161
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 10162
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 10165
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 10166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v10

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v9, p0

    .line 10165
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 10166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10167
    throw v0
.end method

.method public reqAvrcpForward(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9067
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9068
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9069
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9070
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9071
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpForward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9073
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9074
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9077
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9079
    throw p1
.end method

.method public reqAvrcpGetCapabilitiesSupportEvent(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9319
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9321
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9322
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9323
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetCapabilitiesSupportEvent(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9325
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9329
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9331
    throw p1
.end method

.method public reqAvrcpGetElementAttributesPlaying(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9524
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9526
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9527
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9528
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetElementAttributesPlaying(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9530
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9531
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9534
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9536
    throw p1
.end method

.method public reqAvrcpGetFolderItems(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10110
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10112
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 10113
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x91

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10114
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10115
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetFolderItems(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10117
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10118
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 10121
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10123
    throw p1
.end method

.method public reqAvrcpGetItemAttributes(Ljava/lang/String;BIJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10197
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 10198
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, p2

    .line 10199
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByte(B)V

    move v6, p3

    .line 10200
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v7, p4

    .line 10201
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, p0

    .line 10202
    :try_start_1
    iget-object v3, v9, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x93

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10203
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10204
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetItemAttributes(Ljava/lang/String;BIJ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10210
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 10211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 10206
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 10207
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 10210
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 10211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v10

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v9, p0

    .line 10210
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 10211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10212
    throw v0
.end method

.method public reqAvrcpGetPlayStatus(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9557
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9558
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9559
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9560
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9561
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetPlayStatus(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9563
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9564
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9567
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9569
    throw p1
.end method

.method public reqAvrcpGetPlayerSettingAttributeText(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9848
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9850
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9851
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9852
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9853
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetPlayerSettingAttributeText(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9855
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9856
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9859
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9861
    throw p1
.end method

.method public reqAvrcpGetPlayerSettingAttributesList(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9354
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9356
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9357
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9358
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetPlayerSettingAttributesList(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9360
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9364
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9366
    throw p1
.end method

.method public reqAvrcpGetPlayerSettingCurrentValues(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9433
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9434
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9435
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9436
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9437
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9438
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetPlayerSettingCurrentValues(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9440
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9441
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9444
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9446
    throw p1
.end method

.method public reqAvrcpGetPlayerSettingValueText(Ljava/lang/String;BB)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9908
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9910
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9911
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 9912
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9913
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9914
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetPlayerSettingValueText(Ljava/lang/String;BB)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9916
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9917
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9920
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9922
    throw p1
.end method

.method public reqAvrcpGetPlayerSettingValuesList(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9394
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9397
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9398
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9399
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpGetPlayerSettingValuesList(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9401
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9402
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9405
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9407
    throw p1
.end method

.method public reqAvrcpInformBatteryStatusOfCt(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9989
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9990
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9991
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9992
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9993
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9994
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpInformBatteryStatusOfCt(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9996
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9997
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 10000
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10002
    throw p1
.end method

.method public reqAvrcpInformDisplayableCharset(Ljava/lang/String;[I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9948
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9950
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 9951
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9952
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9953
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpInformDisplayableCharset(Ljava/lang/String;[I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9955
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9956
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9959
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9961
    throw p1
.end method

.method public reqAvrcpNextGroup(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9739
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9740
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9741
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9742
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9743
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpNextGroup(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9745
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9746
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9749
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9751
    throw p1
.end method

.method public reqAvrcpPause(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9038
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9039
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9040
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9041
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9042
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpPause(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9044
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9045
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9048
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9050
    throw p1
.end method

.method public reqAvrcpPlay(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8976
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8977
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8978
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8979
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8980
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpPlay(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8982
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8983
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8986
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8988
    throw p1
.end method

.method public reqAvrcpPlayPause()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11059
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11060
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11061
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11062
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpPlayPause()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11064
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11065
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11068
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11070
    throw v2
.end method

.method public reqAvrcpPlaySelectedItem(Ljava/lang/String;BIJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10251
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 10252
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, p2

    .line 10253
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByte(B)V

    move v6, p3

    .line 10254
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v7, p4

    .line 10255
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, p0

    .line 10256
    :try_start_1
    iget-object v3, v9, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x94

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10257
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10258
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpPlaySelectedItem(Ljava/lang/String;BIJ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10264
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 10265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 10260
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 10261
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 10264
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 10265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v10

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v9, p0

    .line 10264
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 10265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10266
    throw v0
.end method

.method public reqAvrcpPreviousGroup(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9770
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9771
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9772
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9773
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9774
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpPreviousGroup(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9776
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9777
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9780
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9782
    throw p1
.end method

.method public reqAvrcpRegisterEventWatcher(Ljava/lang/String;BJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9629
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9631
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9632
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 9633
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9634
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9635
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpRegisterEventWatcher(Ljava/lang/String;BJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9637
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9638
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9641
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9643
    throw p1
.end method

.method public reqAvrcpSearch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10295
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10297
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10298
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x95

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10299
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10300
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSearch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10302
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10303
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 10306
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10308
    throw p1
.end method

.method public reqAvrcpSetAbsoluteVolume(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10419
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10421
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 10422
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x98

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10423
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10424
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSetAbsoluteVolume(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10426
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10427
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 10430
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10432
    throw p1
.end method

.method public reqAvrcpSetAddressedPlayer(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10029
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10030
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10031
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10032
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10033
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10034
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSetAddressedPlayer(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10036
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10037
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 10040
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10042
    throw p1
.end method

.method public reqAvrcpSetBrowsedPlayer(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10070
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10071
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10072
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10073
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x90

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10074
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10075
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSetBrowsedPlayer(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10077
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10078
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 10081
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10083
    throw p1
.end method

.method public reqAvrcpSetMetadataCompanyId(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9805
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9806
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9807
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9808
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9809
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9810
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSetMetadataCompanyId(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9812
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9813
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9816
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9816
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9818
    throw p1
.end method

.method public reqAvrcpSetPlayerSettingValue(Ljava/lang/String;BB)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9489
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9491
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9492
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 9493
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9494
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9495
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpSetPlayerSettingValue(Ljava/lang/String;BB)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9497
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9498
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9501
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9503
    throw p1
.end method

.method public reqAvrcpStartFastForward(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9189
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9191
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9192
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9193
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpStartFastForward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9195
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9196
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9199
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9201
    throw p1
.end method

.method public reqAvrcpStartRewind(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9251
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9252
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9253
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9254
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9255
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpStartRewind(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9257
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9258
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9261
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9263
    throw p1
.end method

.method public reqAvrcpStop(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9007
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9009
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9010
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9011
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpStop(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9013
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9014
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9017
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9019
    throw p1
.end method

.method public reqAvrcpStopFastForward(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9220
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9221
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9222
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9223
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9224
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpStopFastForward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9226
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9227
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9230
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9232
    throw p1
.end method

.method public reqAvrcpStopRewind(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9282
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9284
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9285
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9286
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpStopRewind(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9288
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9289
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9292
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9294
    throw p1
.end method

.method public reqAvrcpUnregisterEventWatcher(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9675
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9676
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9677
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9678
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9679
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9680
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpUnregisterEventWatcher(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9682
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9683
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9686
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9688
    throw p1
.end method

.method public reqAvrcpUpdateSongStatus()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10517
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10518
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10519
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10520
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpUpdateSongStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10523
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 10526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10528
    throw v2
.end method

.method public reqAvrcpVolumeDown(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9158
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9160
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9161
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9162
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpVolumeDown(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9164
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9165
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9168
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9170
    throw p1
.end method

.method public reqAvrcpVolumeUp(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 9127
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9129
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9130
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9131
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqAvrcpVolumeUp(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9133
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9134
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9137
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9139
    throw p1
.end method

.method public reqBluetoothConnectAll(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6182
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6184
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6185
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6186
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothConnectAll(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6188
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6189
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6194
    throw p1
.end method

.method public reqBluetoothDisconnectAll()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6228
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6229
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6230
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6231
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothDisconnectAll()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6233
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6234
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6239
    throw v2
.end method

.method public reqBluetoothFoundDevices()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10991
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10992
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10993
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10994
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothFoundDevices()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10996
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10997
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11000
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11002
    throw v2
.end method

.method public reqBluetoothPair(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5687
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5688
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5689
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5690
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5691
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothPair(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5693
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5694
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5697
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5699
    throw p1
.end method

.method public reqBluetoothPairedDevices()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5811
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5812
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5813
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5814
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothPairedDevices()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5816
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5820
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5822
    throw v2
.end method

.method public reqBluetoothPairedDevicesCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11019
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11020
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xad

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11021
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11022
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothPairedDevicesCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11024
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11025
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11030
    throw v2
.end method

.method public reqBluetoothPairedDevicesExtend()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5839
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5840
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5841
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5842
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothPairedDevicesExtend()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5844
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5845
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5848
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5850
    throw v2
.end method

.method public reqBluetoothRemoteUuids(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6320
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6322
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6323
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6324
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothRemoteUuids(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6326
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6327
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6332
    throw p1
.end method

.method public reqBluetoothScanning(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5654
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 5655
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5656
    iget-object v4, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5657
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5658
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothScanning(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5660
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5661
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 5664
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 5664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5666
    throw p1
.end method

.method public reqBluetoothUnpair(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5721
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5723
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5724
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5725
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothUnpair(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5727
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5728
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5731
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5733
    throw p1
.end method

.method public reqBluetoothUnpairAll()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5753
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5754
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5755
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5756
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothUnpairAll()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5758
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5759
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5762
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5764
    throw v2
.end method

.method public reqBluetoothUnpairAllNextTime()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5783
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5784
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5785
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5786
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqBluetoothUnpairAllNextTime()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5788
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5789
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5792
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5794
    throw v2
.end method

.method public reqCancelPbapDownload(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8036
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8037
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8038
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8039
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8040
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqCancelPbapDownload(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8042
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8043
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8046
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8048
    throw p1
.end method

.method public reqDisconnectAll(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6273
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6275
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6276
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6277
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqDisconnectAll(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6279
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6280
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6285
    throw p1
.end method

.method public reqHfpAnswerCall(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6677
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6679
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6680
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6681
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpAnswerCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6683
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6684
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6687
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6689
    throw p1
.end method

.method public reqHfpAtDownloadPhonebook(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7192
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7194
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7195
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7196
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7197
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpAtDownloadPhonebook(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7199
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7200
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7203
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7205
    throw p1
.end method

.method public reqHfpAtDownloadSMS(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7224
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7226
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7227
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7228
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpAtDownloadSMS(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7230
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7231
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7234
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7236
    throw p1
.end method

.method public reqHfpAudioTransfer(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6843
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6844
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6845
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6846
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6847
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6848
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpAudioTransfer(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6850
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6851
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6854
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6856
    throw p1
.end method

.method public reqHfpConnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6410
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6412
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6413
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6414
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6416
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6417
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6420
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6422
    throw p1
.end method

.method public reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6581
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6583
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6584
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6585
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6586
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6588
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6589
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6592
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6594
    throw p1
.end method

.method public reqHfpDisconnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6440
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6441
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6442
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6443
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6444
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6446
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6447
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6450
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6452
    throw p1
.end method

.method public reqHfpMemoryDial(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6645
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6647
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6648
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6649
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6650
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpMemoryDial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6652
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6653
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6656
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6658
    throw p1
.end method

.method public reqHfpMicMute()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11514
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11515
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11516
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11517
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpMicMute()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11519
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11520
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11523
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11525
    throw v2
.end method

.method public reqHfpMicSelection()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11474
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11475
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11476
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11477
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpMicSelection()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11479
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11483
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11485
    throw v2
.end method

.method public reqHfpMultiCallControl(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6777
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6778
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6779
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6780
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6781
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6782
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpMultiCallControl(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6784
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6785
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6788
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6790
    throw p1
.end method

.method public reqHfpReDial(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6613
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6615
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6616
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6617
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpReDial(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6619
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6620
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6623
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6625
    throw p1
.end method

.method public reqHfpRejectIncomingCall(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6708
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6710
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6711
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6712
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpRejectIncomingCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6714
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6715
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6718
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6720
    throw p1
.end method

.method public reqHfpRemoteDeviceInfo(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6898
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6899
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6900
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6901
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6902
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpRemoteDeviceInfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6905
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6910
    throw p1
.end method

.method public reqHfpRemoteDeviceNetworkOperator(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6986
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6987
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6988
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6989
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6990
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpRemoteDeviceNetworkOperator(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6992
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6993
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6996
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6998
    throw p1
.end method

.method public reqHfpRemoteDevicePhoneNumber(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6956
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6958
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6959
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6960
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpRemoteDevicePhoneNumber(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6962
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6963
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6966
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6968
    throw p1
.end method

.method public reqHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7016
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7017
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7018
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7019
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7020
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7022
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7023
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7026
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7028
    throw p1
.end method

.method public reqHfpRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7261
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7264
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7265
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7266
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7267
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7269
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7270
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7273
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7275
    throw p1
.end method

.method public reqHfpSendDtmf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6809
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6810
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6811
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6812
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6813
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6814
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpSendDtmf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6816
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6820
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6822
    throw p1
.end method

.method public reqHfpTerminateOngoingCall(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6739
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6740
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6741
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6742
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6743
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpTerminateOngoingCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6745
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6746
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6749
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6751
    throw p1
.end method

.method public reqHfpVoiceDial(Ljava/lang/String;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7296
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 7298
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7299
    iget-object v4, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3b

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7300
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7301
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHfpVoiceDial(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7303
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7304
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 7307
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 7307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7309
    throw p1
.end method

.method public reqHidConnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10785
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10787
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10788
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10789
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHidConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10791
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 10795
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10797
    throw p1
.end method

.method public reqHidDisconnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10818
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10819
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10820
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10821
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10822
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHidDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10824
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10825
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 10828
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10830
    throw p1
.end method

.method public reqHspAnswerCall(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7562
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7564
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7565
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7566
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspAnswerCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7568
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7569
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7572
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7574
    throw p1
.end method

.method public reqHspAudioTransfer(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7664
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7666
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7667
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7668
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7669
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspAudioTransfer(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7671
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7672
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7675
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7677
    throw p1
.end method

.method public reqHspConnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7388
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7390
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7391
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7392
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7394
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7395
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7398
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7400
    throw p1
.end method

.method public reqHspDisconnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7419
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7421
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7422
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7423
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7425
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7426
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7429
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7431
    throw p1
.end method

.method public reqHspReDial(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7531
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7533
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7534
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7535
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspReDial(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7537
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7538
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7541
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7543
    throw p1
.end method

.method public reqHspRejectIncomingCall(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7595
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7596
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7597
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7598
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7599
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspRejectIncomingCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7601
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7602
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7605
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7607
    throw p1
.end method

.method public reqHspRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7702
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7703
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7704
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7705
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7706
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7707
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7708
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7710
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7714
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7716
    throw p1
.end method

.method public reqHspTerminateOngoingCall(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7626
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7627
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7628
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7629
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7630
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqHspTerminateOngoingCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7632
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7633
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7636
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7638
    throw p1
.end method

.method public reqMapCleanDatabase()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8529
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8530
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8531
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8532
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapCleanDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8535
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 8538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8540
    throw v2
.end method

.method public reqMapDatabaseAvailable(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8479
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8480
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8481
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8482
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8483
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapDatabaseAvailable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8486
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8491
    throw p1
.end method

.method public reqMapDeleteDatabaseByAddress(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8505
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8506
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8507
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8508
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8509
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapDeleteDatabaseByAddress(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8515
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8512
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8515
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8515
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8517
    throw p1
.end method

.method public reqMapDownloadAllMessages(Ljava/lang/String;IIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8300
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8302
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8303
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 8304
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8305
    iget-object v4, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x5c

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8306
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8307
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapDownloadAllMessages(Ljava/lang/String;IIZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8309
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8310
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 8313
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 8313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8315
    throw p1
.end method

.method public reqMapDownloadInterrupt(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8452
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8454
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8455
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8456
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapDownloadInterrupt(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8458
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8459
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8462
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8464
    throw p1
.end method

.method public reqMapDownloadSingleMessage(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8337
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8339
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8340
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8341
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8342
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8343
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapDownloadSingleMessage(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8345
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8346
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8349
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8351
    throw p1
.end method

.method public reqMapRegisterNotification(Ljava/lang/String;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8370
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 8372
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8373
    iget-object v4, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x5e

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8374
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8375
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapRegisterNotification(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8377
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8378
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 8381
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 8381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8383
    throw p1
.end method

.method public reqMapUnregisterNotification(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8397
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8399
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8400
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8401
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqMapUnregisterNotification(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8404
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8409
    throw p1
.end method

.method public reqPanConnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10607
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10609
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10610
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10611
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPanConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10613
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10614
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 10617
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10619
    throw p1
.end method

.method public reqPanDisconnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10640
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10641
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10642
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10643
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10644
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPanDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10646
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10647
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 10650
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10652
    throw p1
.end method

.method public reqPbapCleanDatabase()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8143
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8144
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8145
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8146
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPbapCleanDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8149
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 8152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8154
    throw v2
.end method

.method public reqPbapDatabaseAvailable(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8064
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8065
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8066
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8067
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8068
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPbapDatabaseAvailable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8071
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8076
    throw p1
.end method

.method public reqPbapDeleteDatabaseByAddress(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8121
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8122
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8123
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPbapDeleteDatabaseByAddress(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8126
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8131
    throw p1
.end method

.method public reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8001
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8002
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8003
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8004
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 8005
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8006
    iget-object v4, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x52

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8007
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8008
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8010
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8011
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 8014
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 8014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8016
    throw p1
.end method

.method public reqPbapDownloadInterrupt(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8170
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8172
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8173
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8174
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPbapDownloadInterrupt(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8176
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8177
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8180
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8182
    throw p1
.end method

.method public reqPbapQueryName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8092
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8093
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8094
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8095
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8096
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8097
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqPbapQueryName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8100
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8105
    throw p1
.end method

.method public reqSoftwareUpdate()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11079
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11080
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11081
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11082
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqSoftwareUpdate()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11084
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11085
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11088
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11090
    throw v2
.end method

.method public reqSppConnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7793
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7795
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7796
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7797
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqSppConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7803
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7799
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7800
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7803
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7803
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7805
    throw p1
.end method

.method public reqSppConnectedDeviceAddressList()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7849
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7850
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7851
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7852
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqSppConnectedDeviceAddressList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7855
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 7858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7860
    throw v2
.end method

.method public reqSppDisconnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7823
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7824
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7825
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7826
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7827
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqSppDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7829
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7830
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7833
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7835
    throw p1
.end method

.method public reqSppSendData(Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7902
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7903
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7904
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7905
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7906
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7907
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->reqSppSendData(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7910
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7915
    throw p1
.end method

.method public requestAudioFocus()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11815
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11816
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11817
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11818
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->requestAudioFocus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11821
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 11824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11826
    throw v2
.end method

.method public requestBTAudioChannel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11833
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11834
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11835
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11836
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->requestBTAudioChannel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11839
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 11842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11844
    throw v2
.end method

.method public sendData(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12588
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12590
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12591
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12592
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->sendData(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 12595
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 12598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12600
    throw p1
.end method

.method public sendHidMouseCommand(IIII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10854
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10856
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10857
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10858
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10859
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10860
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10861
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiServiceCommand;->sendHidMouseCommand(IIII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10863
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10864
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 10867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10869
    throw p1
.end method

.method public sendHidVirtualKeyCommand(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10890
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10891
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10892
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10893
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10894
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10895
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->sendHidVirtualKeyCommand(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10897
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10898
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 10901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10903
    throw p1
.end method

.method public sendSppMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11872
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11874
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11875
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11876
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11877
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->sendSppMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 11879
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 11883
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 11883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11885
    throw p1
.end method

.method public setA2dpLocalMute(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8856
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 8857
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8858
    iget-object v4, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x6f

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8859
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8860
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setA2dpLocalMute(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8862
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8863
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 8866
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 8866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8868
    throw p1
.end method

.method public setA2dpLocalVolume(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8826
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8828
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8829
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8830
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setA2dpLocalVolume(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8832
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8833
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8836
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8838
    throw p1
.end method

.method public setA2dpNativeStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10445
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10446
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x99

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10447
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10448
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setA2dpNativeStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10451
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 10454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10456
    throw v2
.end method

.method public setA2dpNativeStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10469
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10470
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10471
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10472
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setA2dpNativeStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10475
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 10478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10480
    throw v2
.end method

.method public setAAConnected(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12681
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 12683
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12684
    iget-object v3, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x101

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12685
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12686
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setAAConnected(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 12689
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 12692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12694
    throw p1
.end method

.method public setActivePhone(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11158
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11160
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11161
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11162
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setActivePhone(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11165
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11170
    throw p1
.end method

.method public setBluetoothAutoReconnect(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6083
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 6084
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6085
    iget-object v3, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6086
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6087
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setBluetoothAutoReconnect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6090
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6095
    throw p1
.end method

.method public setBluetoothAutoReconnectForceOor(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6113
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 6114
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6115
    iget-object v3, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6116
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6117
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setBluetoothAutoReconnectForceOor(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6120
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6125
    throw p1
.end method

.method public setBluetoothDiscoverableDuration(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5593
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5594
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5595
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5596
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5597
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setBluetoothDiscoverableDuration(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5599
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5600
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5603
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5605
    throw p1
.end method

.method public setBluetoothDiscoverablePermanent(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5623
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 5624
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5625
    iget-object v4, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5626
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5627
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setBluetoothDiscoverablePermanent(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5629
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5630
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 5633
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 5633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5635
    throw p1
.end method

.method public setBluetoothEnable(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5559
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 5560
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5561
    iget-object v4, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5562
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5563
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setBluetoothEnable(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5565
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5566
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 5569
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 5569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5571
    throw p1
.end method

.method public setBluetoothLocalAdapterName(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5946
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5947
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5948
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5949
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5950
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setBluetoothLocalAdapterName(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5952
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5953
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5956
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5958
    throw p1
.end method

.method public setCalibration(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12313
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 12314
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12315
    iget-object v3, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xee

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12316
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12317
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setCalibration(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 12320
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 12323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12325
    throw p1
.end method

.method public setHfpAtNewSmsNotify(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7155
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 7157
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7158
    iget-object v3, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7159
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7160
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setHfpAtNewSmsNotify(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7163
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7168
    throw p1
.end method

.method public setHfpAutoAnswer(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11139
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 11140
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11141
    iget-object v3, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11142
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11143
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setHfpAutoAnswer(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11146
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11151
    throw p1
.end method

.method public setHfpLocalRingEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6871
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 6872
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6873
    iget-object v3, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6874
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6875
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setHfpLocalRingEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6878
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6883
    throw p1
.end method

.method public setOutputFrequencyChannel(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12353
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12355
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12356
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12357
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12358
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setOutputFrequencyChannel(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 12360
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 12364
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 12364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12366
    throw p1
.end method

.method public setOutputFrequencyChannelExtended(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 12375
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12377
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12378
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12379
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setOutputFrequencyChannelExtended(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 12381
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12382
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 12385
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 12385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12387
    throw p1
.end method

.method public setPhonebookAutoSyncEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11454
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 11455
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11456
    iget-object v3, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11457
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11458
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setPhonebookAutoSyncEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11461
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11466
    throw p1
.end method

.method public setPinCode(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11395
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11396
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11397
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11398
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11399
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setPinCode(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11402
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11407
    throw p1
.end method

.method public setTargetAddress(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10940
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10942
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10943
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10944
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setTargetAddress(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10947
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10952
    throw p1
.end method

.method public setTouchesOptions(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11177
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 11178
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11179
    iget-object v3, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11180
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11181
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setTouchesOptions(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11184
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11189
    throw p1
.end method

.method public setTwinConnectEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 11376
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 11377
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11378
    iget-object v3, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11379
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11380
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->setTwinConnectEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11383
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11388
    throw p1
.end method

.method public unregisterA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/UiA2dpCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8642
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 8643
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8644
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8645
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8646
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->unregisterA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/UiA2dpCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8648
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8649
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 8652
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8654
    throw p1
.end method

.method public unregisterHfpCallback(Lnfore/android/bt/servicemanager/UiHfpCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 6379
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6380
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiHfpCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6381
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6382
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6383
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->unregisterHfpCallback(Lnfore/android/bt/servicemanager/UiHfpCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6385
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6386
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 6389
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6391
    throw p1
.end method

.method public unregisterHidCallback(Lnfore/android/bt/servicemanager/UiHidCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10752
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 10753
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiHidCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10754
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10755
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10756
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->unregisterHidCallback(Lnfore/android/bt/servicemanager/UiHidCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10758
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10759
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 10762
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10764
    throw p1
.end method

.method public unregisterHspCallback(Lnfore/android/bt/servicemanager/UiHspCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7356
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7357
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiHspCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7358
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7359
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7360
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->unregisterHspCallback(Lnfore/android/bt/servicemanager/UiHspCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7362
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7363
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 7366
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7368
    throw p1
.end method

.method public unregisterMapCallback(Lnfore/android/bt/servicemanager/UiMapCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 8257
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 8258
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiMapCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8259
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8260
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8261
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->unregisterMapCallback(Lnfore/android/bt/servicemanager/UiMapCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8263
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8264
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 8267
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8269
    throw p1
.end method

.method public unregisterNforeServiceCallback(Lnfore/android/bt/servicemanager/UiServiceCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 5529
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5530
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5531
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5532
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5533
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->unregisterNforeServiceCallback(Lnfore/android/bt/servicemanager/UiServiceCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5535
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 5539
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5541
    throw p1
.end method

.method public unregisterPanCallback(Lnfore/android/bt/servicemanager/UiPanCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 10574
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 10575
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiPanCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10576
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10577
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10578
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->unregisterPanCallback(Lnfore/android/bt/servicemanager/UiPanCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10580
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10581
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 10584
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10586
    throw p1
.end method

.method public unregisterPbapCallback(Lnfore/android/bt/servicemanager/UiPbapCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7961
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7962
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiPbapCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7963
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7964
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7965
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->unregisterPbapCallback(Lnfore/android/bt/servicemanager/UiPbapCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7971
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7967
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7968
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 7971
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7971
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7973
    throw p1
.end method

.method public unregisterSppCallback(Lnfore/android/bt/servicemanager/UiSppCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCommand"

    .line 7763
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7764
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/UiSppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7765
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7766
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7767
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCommand;->unregisterSppCallback(Lnfore/android/bt/servicemanager/UiSppCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7769
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7770
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 7773
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7775
    throw p1
.end method
