.class Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;
.super Ljava/lang/Object;
.source "INfServiceCommand.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/INfServiceCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lnfore/android/bt/servicemanager/INfServiceCommand;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 4267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4268
    iput-object p1, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 4272
    iget-object v0, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getA2dpConnectedDeviceAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7422
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7423
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7424
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7425
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getA2dpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 7427
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7428
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 7431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7433
    throw v2
.end method

.method public getA2dpCurrentState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7448
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7449
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7450
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7451
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getA2dpCurrentState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7453
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7454
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7459
    throw v2
.end method

.method public getAvrcpConnectedDeviceAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7571
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7572
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7573
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7574
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getAvrcpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 7576
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7577
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 7580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7582
    throw v2
.end method

.method public getAvrcpCurrentState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7474
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7475
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7476
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7477
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getAvrcpCurrentState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7479
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7485
    throw v2
.end method

.method public getBluetoothCurrentState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4764
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4765
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4766
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4767
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getBluetoothCurrentState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4769
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4770
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4775
    throw v2
.end method

.method public getBluetoothLocalAdapterAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4682
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4683
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4684
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4685
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getBluetoothLocalAdapterAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 4687
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4688
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4693
    throw v2
.end method

.method public getBluetoothLocalAdapterName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4627
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4628
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4629
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4630
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getBluetoothLocalAdapterName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 4632
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4633
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4638
    throw v2
.end method

.method public getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4656
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4657
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4658
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4659
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4660
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 4662
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4663
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4668
    throw p1
.end method

.method public getHfpConnectedDeviceAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5183
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5184
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5185
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5186
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 5188
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5189
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 5192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5194
    throw v2
.end method

.method public getHfpCurrentScoState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5237
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5239
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5240
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5241
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getHfpCurrentScoState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5243
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5244
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 5247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5249
    throw p1
.end method

.method public getHfpCurrentState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5210
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5211
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5212
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5213
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5214
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getHfpCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5216
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5217
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 5220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5222
    throw p1
.end method

.method public getHfpRemoteDeviceBatteryStatus(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5815
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5817
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5818
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5819
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getHfpRemoteDeviceBatteryStatus(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5821
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5822
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 5825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5827
    throw p1
.end method

.method public getHfpRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5641
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5643
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5644
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5645
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getHfpRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 5647
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5648
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5653
    throw p1
.end method

.method public getHfpRemoteDeviceSignalStatus(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5843
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5844
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5845
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5846
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5847
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getHfpRemoteDeviceSignalStatus(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5849
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5850
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 5853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5855
    throw p1
.end method

.method public getHidCurrentState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9578
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9579
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9580
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9581
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getHidCurrentState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 9583
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9584
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 9587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9589
    throw v2
.end method

.method public getHspConnectedDeviceAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6162
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6163
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6164
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6165
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getHspConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 6167
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6168
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 6171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6173
    throw v2
.end method

.method public getHspCurrentScoState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6215
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6217
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6218
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6219
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getHspCurrentScoState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6221
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6222
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6227
    throw p1
.end method

.method public getHspCurrentState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6188
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6190
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6191
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6192
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getHspCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6194
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6195
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6200
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "nfore.android.bt.servicemanager.INfServiceCommand"

    return-object v0
.end method

.method public getMapCurrentState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7238
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7240
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7241
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7242
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getMapCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7244
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7245
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 7248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7250
    throw p1
.end method

.method public getMapRegisterState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7266
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7268
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7269
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7270
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getMapRegisterState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7272
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7273
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 7276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7278
    throw p1
.end method

.method public getPanConnectedDeviceAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9328
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9329
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9330
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9331
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getPanConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 9333
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9334
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 9337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9339
    throw v2
.end method

.method public getPanCurrentState()I
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
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9354
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9355
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9356
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9357
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getPanCurrentState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 9359
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9360
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 9363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9365
    throw v2
.end method

.method public getPbapCurrentState(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6881
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6882
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6883
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6884
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6885
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->getPbapCurrentState(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6887
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6888
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 6891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6893
    throw p1
.end method

.method public isA2dpNativeRunning()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9176
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9177
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x98

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9178
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9179
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isA2dpNativeRunning()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 9181
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9182
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 9185
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 9185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9187
    throw v2
.end method

.method public isAvrcp13Supported(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7599
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7600
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7601
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7602
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7603
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isAvrcp13Supported(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7605
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7606
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7609
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7611
    throw p1
.end method

.method public isAvrcp14Supported(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7628
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7629
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7630
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7631
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7632
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isAvrcp14Supported(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7634
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7635
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7638
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7640
    throw p1
.end method

.method public isAvrcpBrowsingChannelEstablished(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9060
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9061
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9062
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9063
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9064
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isAvrcpBrowsingChannelEstablished(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9066
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9067
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9070
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9072
    throw p1
.end method

.method public isBluetoothAutoReconnectEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4900
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4901
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4902
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4903
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isBluetoothAutoReconnectEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4905
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4906
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 4909
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4911
    throw v2
.end method

.method public isBluetoothDiscoverable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4814
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4815
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4816
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4817
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isBluetoothDiscoverable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4819
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4820
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 4823
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4825
    throw v2
.end method

.method public isBluetoothEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4734
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4735
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4736
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4737
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isBluetoothEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4739
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4740
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 4743
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4745
    throw v2
.end method

.method public isBluetoothScanning()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4789
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4790
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4791
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4792
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isBluetoothScanning()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4794
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4795
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 4798
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4800
    throw v2
.end method

.method public isHfpRemoteDeviceOnRoaming(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5787
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5788
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5789
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5790
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5791
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isHfpRemoteDeviceOnRoaming(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5793
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5794
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5797
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5799
    throw p1
.end method

.method public isHfpRemoteDeviceTelecomServiceOn(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5759
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5761
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5762
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5763
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isHfpRemoteDeviceTelecomServiceOn(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5765
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5766
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5769
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5771
    throw p1
.end method

.method public isHfpVoiceControlOn(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5264
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5265
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5266
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5267
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5268
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isHfpVoiceControlOn(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5270
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5271
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5274
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5276
    throw p1
.end method

.method public isMapNotificationRegistered(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7106
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7108
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7109
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7110
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isMapNotificationRegistered(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7112
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7113
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7116
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7118
    throw p1
.end method

.method public isSppConnected(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6589
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6590
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6591
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6592
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6593
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->isSppConnected(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6595
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6596
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6599
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6601
    throw p1
.end method

.method public registerA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/IA2dpCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7297
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7298
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IA2dpCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7299
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7300
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7301
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->registerA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/IA2dpCallback;)Z

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

    const/4 v4, 0x1

    .line 7307
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7309
    throw p1
.end method

.method public registerHfpCallback(Lnfore/android/bt/servicemanager/IHfpCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5066
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5067
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IHfpCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5068
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5069
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5070
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->registerHfpCallback(Lnfore/android/bt/servicemanager/IHfpCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5072
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5073
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 5076
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5078
    throw p1
.end method

.method public registerHidCallback(Lnfore/android/bt/servicemanager/IHidCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9384
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 9385
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IHidCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9386
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9387
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9388
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->registerHidCallback(Lnfore/android/bt/servicemanager/IHidCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9390
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 9394
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9396
    throw p1
.end method

.method public registerHspCallback(Lnfore/android/bt/servicemanager/IHspCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6043
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6044
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IHspCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6045
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6046
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6047
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->registerHspCallback(Lnfore/android/bt/servicemanager/IHspCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6049
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6050
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 6053
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6055
    throw p1
.end method

.method public registerMapCallback(Lnfore/android/bt/servicemanager/IMapCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6912
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6913
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IMapCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6914
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6915
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6916
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->registerMapCallback(Lnfore/android/bt/servicemanager/IMapCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6918
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6919
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 6922
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6924
    throw p1
.end method

.method public registerNforeServiceCallback(Lnfore/android/bt/servicemanager/IServiceCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4292
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4293
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4294
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4295
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4296
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->registerNforeServiceCallback(Lnfore/android/bt/servicemanager/IServiceCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4298
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4299
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    move v3, v4

    .line 4302
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 4302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4304
    throw p1
.end method

.method public registerPanCallback(Lnfore/android/bt/servicemanager/IPanCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9206
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 9207
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IPanCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9208
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x99

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9209
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9210
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->registerPanCallback(Lnfore/android/bt/servicemanager/IPanCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9212
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9213
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 9216
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9218
    throw p1
.end method

.method public registerPbapCallback(Lnfore/android/bt/servicemanager/IPbapCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6648
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6649
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IPbapCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6650
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6651
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6652
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->registerPbapCallback(Lnfore/android/bt/servicemanager/IPbapCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6654
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6655
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 6658
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6660
    throw p1
.end method

.method public registerSppCallback(Lnfore/android/bt/servicemanager/ISppCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6450
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6451
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/ISppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6452
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6453
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6454
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->registerSppCallback(Lnfore/android/bt/servicemanager/ISppCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6456
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6457
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 6460
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6462
    throw p1
.end method

.method public reqA2dpConnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7361
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7362
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7363
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7364
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7365
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqA2dpConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7367
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7368
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7371
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7373
    throw p1
.end method

.method public reqA2dpDisconnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7394
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7396
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7397
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7398
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqA2dpDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7400
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7401
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7404
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7406
    throw p1
.end method

.method public reqAvrcpAbortMetadataReceiving(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8391
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8392
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8393
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8394
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8395
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpAbortMetadataReceiving(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8397
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8398
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8401
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8403
    throw p1
.end method

.method public reqAvrcpAddToNowPlaying(Ljava/lang/String;BIJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9029
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 9030
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, p2

    .line 9031
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByte(B)V

    move v6, p3

    .line 9032
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v7, p4

    .line 9033
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, p0

    .line 9034
    :try_start_1
    iget-object v3, v9, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x93

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9035
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9036
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpAddToNowPlaying(Ljava/lang/String;BIJ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9042
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 9043
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 9038
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 9039
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 9042
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 9043
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v10

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v9, p0

    .line 9042
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 9043
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9044
    throw v0
.end method

.method public reqAvrcpBackward(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7779
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7780
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7781
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7782
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7783
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpBackward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7785
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7786
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7789
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7791
    throw p1
.end method

.method public reqAvrcpChangePath(Ljava/lang/String;IJB)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8835
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 8836
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, p2

    .line 8837
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v6, p3

    .line 8838
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v8, p5

    .line 8839
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, p0

    .line 8840
    :try_start_1
    iget-object v3, v9, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8f

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8841
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8842
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpChangePath(Ljava/lang/String;IJB)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8848
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 8844
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 8845
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 8848
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v10

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v9, p0

    .line 8848
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8850
    throw v0
.end method

.method public reqAvrcpForward(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7750
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7751
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7752
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7753
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7754
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpForward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7760
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7756
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7757
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7760
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7760
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7762
    throw p1
.end method

.method public reqAvrcpGetCapabilitiesSupportEvent(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8002
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8003
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8004
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8005
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8006
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpGetCapabilitiesSupportEvent(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8008
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8009
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8012
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8014
    throw p1
.end method

.method public reqAvrcpGetElementAttributesPlaying(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8207
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8208
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8209
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8210
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8211
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpGetElementAttributesPlaying(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8213
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8214
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8217
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8219
    throw p1
.end method

.method public reqAvrcpGetFolderItems(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8793
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8795
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8796
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8797
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8798
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpGetFolderItems(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8800
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8801
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8804
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8806
    throw p1
.end method

.method public reqAvrcpGetItemAttributes(Ljava/lang/String;BIJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8880
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 8881
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, p2

    .line 8882
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByte(B)V

    move v6, p3

    .line 8883
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v7, p4

    .line 8884
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, p0

    .line 8885
    :try_start_1
    iget-object v3, v9, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x90

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8886
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8887
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpGetItemAttributes(Ljava/lang/String;BIJ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8893
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 8889
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 8890
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 8893
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v10

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v9, p0

    .line 8893
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8895
    throw v0
.end method

.method public reqAvrcpGetPlayStatus(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8240
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8242
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8243
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8244
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpGetPlayStatus(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8246
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8247
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8250
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8252
    throw p1
.end method

.method public reqAvrcpGetPlayerSettingAttributeText(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8531
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8533
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8534
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8535
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8536
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpGetPlayerSettingAttributeText(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8538
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8539
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8542
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8544
    throw p1
.end method

.method public reqAvrcpGetPlayerSettingAttributesList(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8037
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8038
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8039
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8040
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8041
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpGetPlayerSettingAttributesList(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8043
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8044
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8047
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8049
    throw p1
.end method

.method public reqAvrcpGetPlayerSettingCurrentValues(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8116
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8118
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8119
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8120
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8121
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpGetPlayerSettingCurrentValues(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8123
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8124
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8127
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8129
    throw p1
.end method

.method public reqAvrcpGetPlayerSettingValueText(Ljava/lang/String;BB)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8591
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8592
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8593
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8594
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 8595
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8596
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8597
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpGetPlayerSettingValueText(Ljava/lang/String;BB)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8599
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8600
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8603
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8605
    throw p1
.end method

.method public reqAvrcpGetPlayerSettingValuesList(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8077
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8078
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8079
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8080
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8081
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8082
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpGetPlayerSettingValuesList(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8084
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8085
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8088
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8090
    throw p1
.end method

.method public reqAvrcpInformBatteryStatusOfCt(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8672
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8673
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8674
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8675
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8676
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8677
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpInformBatteryStatusOfCt(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8679
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8680
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8683
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8685
    throw p1
.end method

.method public reqAvrcpInformDisplayableCharset(Ljava/lang/String;[I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8631
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8633
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 8634
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8635
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8636
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpInformDisplayableCharset(Ljava/lang/String;[I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8638
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8639
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8642
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8644
    throw p1
.end method

.method public reqAvrcpNextGroup(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8422
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8424
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8425
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8426
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpNextGroup(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8428
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8429
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8432
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8434
    throw p1
.end method

.method public reqAvrcpPause(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7721
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7723
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7724
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7725
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpPause(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7727
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7728
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7731
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7733
    throw p1
.end method

.method public reqAvrcpPlay(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7659
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7660
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7661
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7662
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7663
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpPlay(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7665
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7666
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7669
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7671
    throw p1
.end method

.method public reqAvrcpPlaySelectedItem(Ljava/lang/String;BIJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8934
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 8935
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, p2

    .line 8936
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByte(B)V

    move v6, p3

    .line 8937
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v7, p4

    .line 8938
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, p0

    .line 8939
    :try_start_1
    iget-object v3, v9, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x91

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8940
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8941
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpPlaySelectedItem(Ljava/lang/String;BIJ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8947
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 8943
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 8944
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 8947
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v10

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v9, p0

    .line 8947
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 8948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8949
    throw v0
.end method

.method public reqAvrcpPreviousGroup(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8453
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8455
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8456
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8457
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpPreviousGroup(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8459
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8460
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8463
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8465
    throw p1
.end method

.method public reqAvrcpRegisterEventWatcher(Ljava/lang/String;BJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8312
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8313
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8314
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8315
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 8316
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8317
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8318
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpRegisterEventWatcher(Ljava/lang/String;BJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8320
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8321
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8324
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8326
    throw p1
.end method

.method public reqAvrcpSearch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8978
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8979
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8980
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8981
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8982
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8983
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpSearch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8985
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8986
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8989
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8991
    throw p1
.end method

.method public reqAvrcpSetAbsoluteVolume(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9102
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9104
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9105
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x95

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9106
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9107
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpSetAbsoluteVolume(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9109
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9113
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9115
    throw p1
.end method

.method public reqAvrcpSetAddressedPlayer(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8712
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8714
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8715
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8716
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8717
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpSetAddressedPlayer(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8719
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8720
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8723
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8725
    throw p1
.end method

.method public reqAvrcpSetBrowsedPlayer(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8753
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8755
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8756
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8757
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8758
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpSetBrowsedPlayer(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8760
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8761
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8764
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8766
    throw p1
.end method

.method public reqAvrcpSetMetadataCompanyId(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8488
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8489
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8490
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8491
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8492
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8493
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpSetMetadataCompanyId(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8495
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8496
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8499
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8501
    throw p1
.end method

.method public reqAvrcpSetPlayerSettingValue(Ljava/lang/String;BB)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8172
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8173
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8174
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8175
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 8176
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8177
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8178
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpSetPlayerSettingValue(Ljava/lang/String;BB)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8180
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8181
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8184
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8186
    throw p1
.end method

.method public reqAvrcpStartFastForward(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7872
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7874
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7875
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7876
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpStartFastForward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7878
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7879
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7882
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7884
    throw p1
.end method

.method public reqAvrcpStartRewind(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7934
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7935
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7936
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7937
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7938
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpStartRewind(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7940
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7941
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7944
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7946
    throw p1
.end method

.method public reqAvrcpStop(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7690
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7691
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7692
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7693
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7694
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpStop(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7696
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7697
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7700
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7702
    throw p1
.end method

.method public reqAvrcpStopFastForward(Ljava/lang/String;)Z
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
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7903
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7904
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7905
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7906
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7907
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpStopFastForward(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7909
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7910
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7913
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7915
    throw p1
.end method

.method public reqAvrcpStopRewind(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7965
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7966
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7967
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7968
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7969
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpStopRewind(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7971
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7972
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7975
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7977
    throw p1
.end method

.method public reqAvrcpUnregisterEventWatcher(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 8358
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8359
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8360
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8361
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8362
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8363
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpUnregisterEventWatcher(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8365
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8366
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 8369
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 8369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8371
    throw p1
.end method

.method public reqAvrcpVolumeDown(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7841
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7843
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7844
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7845
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpVolumeDown(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7847
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7848
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7851
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7853
    throw p1
.end method

.method public reqAvrcpVolumeUp(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7810
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7812
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7813
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7814
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqAvrcpVolumeUp(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7816
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7820
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7822
    throw p1
.end method

.method public reqBluetoothConnectAll(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4944
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4945
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4946
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4947
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4948
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqBluetoothConnectAll(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4950
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4951
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 4954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4956
    throw p1
.end method

.method public reqBluetoothDisconnectAll()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4990
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4991
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4992
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4993
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqBluetoothDisconnectAll()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4995
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4996
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5001
    throw v2
.end method

.method public reqBluetoothPair(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4477
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4478
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4479
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4480
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4481
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqBluetoothPair(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4483
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4484
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 4487
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 4487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4489
    throw p1
.end method

.method public reqBluetoothPairedDevices()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4601
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4602
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4603
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4604
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqBluetoothPairedDevices()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4606
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4607
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 4610
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4612
    throw v2
.end method

.method public reqBluetoothRemoteUuids(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5035
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5036
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5037
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5038
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5039
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqBluetoothRemoteUuids(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5041
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5042
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 5045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5047
    throw p1
.end method

.method public reqBluetoothScanning(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4444
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 4445
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4446
    iget-object v4, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4447
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4448
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqBluetoothScanning(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4450
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4451
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 4454
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 4454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4456
    throw p1
.end method

.method public reqBluetoothUnpair(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4511
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4513
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4514
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4515
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqBluetoothUnpair(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4517
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4518
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 4521
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 4521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4523
    throw p1
.end method

.method public reqBluetoothUnpairAll()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4543
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4544
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4545
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4546
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqBluetoothUnpairAll()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4548
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4549
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 4552
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4554
    throw v2
.end method

.method public reqBluetoothUnpairAllNextTime()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4573
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4574
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4575
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4576
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqBluetoothUnpairAllNextTime()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4578
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4579
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 4582
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4584
    throw v2
.end method

.method public reqHfpAnswerCall(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5392
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5394
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5395
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5396
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpAnswerCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5398
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5399
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5402
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5404
    throw p1
.end method

.method public reqHfpAtDownloadPhonebook(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5907
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5909
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5910
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5911
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5912
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpAtDownloadPhonebook(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5914
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5915
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5918
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5920
    throw p1
.end method

.method public reqHfpAtDownloadSMS(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5939
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5941
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5942
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5943
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpAtDownloadSMS(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5945
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5946
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5949
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5951
    throw p1
.end method

.method public reqHfpAudioTransfer(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5558
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5560
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5561
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5562
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5563
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpAudioTransfer(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5565
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5566
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5569
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5571
    throw p1
.end method

.method public reqHfpConnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5125
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5127
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5128
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5129
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5131
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5132
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5135
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5137
    throw p1
.end method

.method public reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5296
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5298
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5299
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5300
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5301
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5303
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5304
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5307
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5309
    throw p1
.end method

.method public reqHfpDisconnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5155
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5157
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5158
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5159
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5161
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5165
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5167
    throw p1
.end method

.method public reqHfpMemoryDial(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5360
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5362
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5363
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5364
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5365
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpMemoryDial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5367
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5368
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5371
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5373
    throw p1
.end method

.method public reqHfpMultiCallControl(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5492
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5494
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5495
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5496
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5497
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpMultiCallControl(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5499
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5500
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5503
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5505
    throw p1
.end method

.method public reqHfpReDial(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5328
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5330
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5331
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5332
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpReDial(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5334
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5335
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5338
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5340
    throw p1
.end method

.method public reqHfpRejectIncomingCall(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5423
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5425
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5426
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5427
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpRejectIncomingCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5429
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5430
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5433
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5435
    throw p1
.end method

.method public reqHfpRemoteDeviceInfo(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5613
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5615
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5616
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5617
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpRemoteDeviceInfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5620
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5625
    throw p1
.end method

.method public reqHfpRemoteDeviceNetworkOperator(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5701
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5702
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5703
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5704
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5705
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpRemoteDeviceNetworkOperator(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5707
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5708
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5711
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5713
    throw p1
.end method

.method public reqHfpRemoteDevicePhoneNumber(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5671
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5672
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5673
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5674
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5675
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpRemoteDevicePhoneNumber(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5677
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5678
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5681
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5683
    throw p1
.end method

.method public reqHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5731
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5733
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5734
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5735
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5737
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5738
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5741
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5743
    throw p1
.end method

.method public reqHfpRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5976
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5977
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5978
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5979
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5980
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5981
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5982
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5984
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5985
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5988
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5990
    throw p1
.end method

.method public reqHfpSendDtmf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5524
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5526
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5527
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5528
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5529
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpSendDtmf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5531
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5532
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5535
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5537
    throw p1
.end method

.method public reqHfpTerminateOngoingCall(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5454
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5455
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5456
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5457
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5458
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpTerminateOngoingCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5460
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5464
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5466
    throw p1
.end method

.method public reqHfpVoiceDial(Ljava/lang/String;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6007
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6011
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6012
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 6013
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6014
    iget-object v4, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x39

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6015
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6016
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHfpVoiceDial(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6018
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6019
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 6022
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 6022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6024
    throw p1
.end method

.method public reqHidConnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9445
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9447
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9448
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9449
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHidConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9451
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9452
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9455
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9457
    throw p1
.end method

.method public reqHidDisconnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9478
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9480
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9481
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9482
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHidDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9484
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9488
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9490
    throw p1
.end method

.method public reqHspAnswerCall(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6277
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6279
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6280
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6281
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHspAnswerCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6283
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6284
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6287
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6289
    throw p1
.end method

.method public reqHspAudioTransfer(Ljava/lang/String;B)Z
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
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6379
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6382
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6383
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6384
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHspAudioTransfer(Ljava/lang/String;B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6386
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6387
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6390
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6392
    throw p1
.end method

.method public reqHspConnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6103
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6105
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6106
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6107
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHspConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6109
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6113
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6115
    throw p1
.end method

.method public reqHspDisconnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6134
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6135
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6136
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6137
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6138
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHspDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6140
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6141
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6144
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6146
    throw p1
.end method

.method public reqHspReDial(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6246
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6248
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6249
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6250
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHspReDial(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6252
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6253
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6256
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6258
    throw p1
.end method

.method public reqHspRejectIncomingCall(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6310
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6312
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6313
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6314
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHspRejectIncomingCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6316
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6317
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6320
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6322
    throw p1
.end method

.method public reqHspRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6417
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6419
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6420
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6421
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6422
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6423
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHspRemoteDeviceVolumeSync(Ljava/lang/String;BI)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6425
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6426
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6429
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6431
    throw p1
.end method

.method public reqHspTerminateOngoingCall(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6341
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6343
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6344
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6345
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqHspTerminateOngoingCall(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6347
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6348
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6351
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6353
    throw p1
.end method

.method public reqMapCleanDatabase()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7212
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7213
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7214
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7215
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqMapCleanDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7218
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 7221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7223
    throw v2
.end method

.method public reqMapDatabaseAvailable(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7162
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7164
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7165
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7166
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqMapDatabaseAvailable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7169
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7174
    throw p1
.end method

.method public reqMapDeleteDatabaseByAddress(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7188
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7190
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7191
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7192
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqMapDeleteDatabaseByAddress(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7195
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7200
    throw p1
.end method

.method public reqMapDownloadAllMessages(Ljava/lang/String;IIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6979
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6983
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6984
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6985
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6986
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 6987
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6988
    iget-object v4, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x59

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6989
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6990
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqMapDownloadAllMessages(Ljava/lang/String;IIZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6992
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6993
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 6996
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 6996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6998
    throw p1
.end method

.method public reqMapDownloadInterrupt(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7135
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7137
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7138
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7139
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqMapDownloadInterrupt(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7141
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7142
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7145
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7147
    throw p1
.end method

.method public reqMapDownloadSingleMessage(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7020
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7021
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7022
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7023
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7024
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7025
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7026
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqMapDownloadSingleMessage(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7028
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7032
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7034
    throw p1
.end method

.method public reqMapRegisterNotification(Ljava/lang/String;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7053
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7054
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 7055
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7056
    iget-object v4, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x5b

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7057
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7058
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqMapRegisterNotification(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7060
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7061
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 7064
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 7064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7066
    throw p1
.end method

.method public reqMapUnregisterNotification(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7080
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7081
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7082
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7083
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7084
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqMapUnregisterNotification(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7087
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7092
    throw p1
.end method

.method public reqPanConnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9267
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9269
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9270
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9271
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqPanConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9273
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9274
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9277
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9279
    throw p1
.end method

.method public reqPanDisconnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9300
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9302
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9303
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9304
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqPanDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9306
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9307
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 9310
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9312
    throw p1
.end method

.method public reqPbapCleanDatabase()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6826
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6827
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6828
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6829
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqPbapCleanDatabase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6832
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 6835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6837
    throw v2
.end method

.method public reqPbapDatabaseAvailable(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6747
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6749
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6750
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6751
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqPbapDatabaseAvailable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6754
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6759
    throw p1
.end method

.method public reqPbapDeleteDatabaseByAddress(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6802
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6803
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6804
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6805
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6806
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqPbapDeleteDatabaseByAddress(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6809
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6814
    throw p1
.end method

.method public reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6716
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6717
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6718
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6719
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 6720
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6721
    iget-object v4, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x50

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6722
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6723
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqPbapDownloadAllVcards(Ljava/lang/String;IIZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6725
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6726
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 6729
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 6729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6731
    throw p1
.end method

.method public reqPbapDownloadInterrupt(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6853
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6854
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6855
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6856
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6857
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqPbapDownloadInterrupt(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6859
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6860
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6863
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6865
    throw p1
.end method

.method public reqPbapQueryName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6775
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6776
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6777
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6778
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6779
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6780
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqPbapQueryName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6783
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6788
    throw p1
.end method

.method public reqSppConnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6508
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6509
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6510
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6511
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6512
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqSppConnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6514
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6515
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6518
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6520
    throw p1
.end method

.method public reqSppConnectedDeviceAddressList()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6564
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6565
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6566
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6567
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqSppConnectedDeviceAddressList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6570
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 6573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6575
    throw v2
.end method

.method public reqSppDisconnect(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6538
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6539
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6540
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6541
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6542
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqSppDisconnect(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6544
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6545
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 6548
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6550
    throw p1
.end method

.method public reqSppSendData(Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6617
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6618
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6619
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6620
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6621
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6622
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->reqSppSendData(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6625
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6630
    throw p1
.end method

.method public sendHidMouseCommand(IIII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9514
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9515
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9516
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9517
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9518
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9519
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9520
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9521
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/INfServiceCommand;->sendHidMouseCommand(IIII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9523
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9524
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 9527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9529
    throw p1
.end method

.method public sendHidVirtualKeyCommand(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9550
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9551
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9552
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9553
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9554
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9555
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->sendHidVirtualKeyCommand(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9557
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9558
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 9561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9563
    throw p1
.end method

.method public setA2dpLocalMute(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7539
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 7540
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7541
    iget-object v4, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x6c

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7542
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7543
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->setA2dpLocalMute(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7545
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7546
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 7549
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 7549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7551
    throw p1
.end method

.method public setA2dpLocalVolume(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7509
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7511
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7512
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7513
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->setA2dpLocalVolume(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7515
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7516
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 7519
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7521
    throw p1
.end method

.method public setA2dpNativeStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9128
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9129
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9130
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9131
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->setA2dpNativeStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9134
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 9137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9139
    throw v2
.end method

.method public setA2dpNativeStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9152
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9153
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9154
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9155
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->setA2dpNativeStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9158
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 9161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9163
    throw v2
.end method

.method public setBluetoothAutoReconnect(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4845
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4846
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4847
    iget-object v3, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4848
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4849
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->setBluetoothAutoReconnect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4852
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4857
    throw p1
.end method

.method public setBluetoothAutoReconnectForceOor(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4875
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4876
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4877
    iget-object v3, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4878
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4879
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->setBluetoothAutoReconnectForceOor(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4882
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4887
    throw p1
.end method

.method public setBluetoothDiscoverableDuration(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4383
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4385
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4386
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4387
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->setBluetoothDiscoverableDuration(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4389
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4390
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 4393
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 4393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4395
    throw p1
.end method

.method public setBluetoothDiscoverablePermanent(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4413
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 4414
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4415
    iget-object v4, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4416
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4417
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->setBluetoothDiscoverablePermanent(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4419
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4420
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 4423
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 4423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4425
    throw p1
.end method

.method public setBluetoothEnable(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4349
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 4350
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4351
    iget-object v4, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4352
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4353
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->setBluetoothEnable(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4355
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4356
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 4359
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 4359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4361
    throw p1
.end method

.method public setBluetoothLocalAdapterName(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4708
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4710
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4711
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4712
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->setBluetoothLocalAdapterName(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4714
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4715
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 4718
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 4718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4720
    throw p1
.end method

.method public setHfpAtNewSmsNotify(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5870
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5872
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5873
    iget-object v3, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5874
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5875
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/INfServiceCommand;->setHfpAtNewSmsNotify(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5878
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5883
    throw p1
.end method

.method public setHfpLocalRingEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5586
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5587
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5588
    iget-object v3, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5589
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5590
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->setHfpLocalRingEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5593
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5598
    throw p1
.end method

.method public unregisterA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/IA2dpCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 7325
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 7326
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IA2dpCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7327
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7328
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7329
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->unregisterA2dpAvrcpCallback(Lnfore/android/bt/servicemanager/IA2dpCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 7331
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7332
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 7335
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 7335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7337
    throw p1
.end method

.method public unregisterHfpCallback(Lnfore/android/bt/servicemanager/IHfpCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 5094
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5095
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IHfpCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5096
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5097
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5098
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->unregisterHfpCallback(Lnfore/android/bt/servicemanager/IHfpCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 5100
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 5104
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 5104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5106
    throw p1
.end method

.method public unregisterHidCallback(Lnfore/android/bt/servicemanager/IHidCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9412
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 9413
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IHidCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9414
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9415
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9416
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->unregisterHidCallback(Lnfore/android/bt/servicemanager/IHidCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9418
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9419
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 9422
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9424
    throw p1
.end method

.method public unregisterHspCallback(Lnfore/android/bt/servicemanager/IHspCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6071
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6072
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IHspCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6073
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6074
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6075
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->unregisterHspCallback(Lnfore/android/bt/servicemanager/IHspCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6077
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6078
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 6081
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6083
    throw p1
.end method

.method public unregisterMapCallback(Lnfore/android/bt/servicemanager/IMapCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6940
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6941
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IMapCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6942
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6943
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6944
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->unregisterMapCallback(Lnfore/android/bt/servicemanager/IMapCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6946
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6947
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 6950
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6952
    throw p1
.end method

.method public unregisterNforeServiceCallback(Lnfore/android/bt/servicemanager/IServiceCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 4319
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4320
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4321
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4322
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4323
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->unregisterNforeServiceCallback(Lnfore/android/bt/servicemanager/IServiceCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4325
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 4329
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 4329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4331
    throw p1
.end method

.method public unregisterPanCallback(Lnfore/android/bt/servicemanager/IPanCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 9234
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 9235
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IPanCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9236
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9237
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9238
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->unregisterPanCallback(Lnfore/android/bt/servicemanager/IPanCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9240
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9241
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 9244
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 9244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9246
    throw p1
.end method

.method public unregisterPbapCallback(Lnfore/android/bt/servicemanager/IPbapCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6676
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6677
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/IPbapCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6678
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6679
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6680
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->unregisterPbapCallback(Lnfore/android/bt/servicemanager/IPbapCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6682
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6683
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 6686
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6688
    throw p1
.end method

.method public unregisterSppCallback(Lnfore/android/bt/servicemanager/ISppCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.INfServiceCommand"

    .line 6478
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6479
    invoke-interface {p1}, Lnfore/android/bt/servicemanager/ISppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6480
    iget-object v2, p0, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6481
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6482
    invoke-static {}, Lnfore/android/bt/servicemanager/INfServiceCommand$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/INfServiceCommand;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/INfServiceCommand;->unregisterSppCallback(Lnfore/android/bt/servicemanager/ISppCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 6484
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 6488
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 6488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6490
    throw p1
.end method
