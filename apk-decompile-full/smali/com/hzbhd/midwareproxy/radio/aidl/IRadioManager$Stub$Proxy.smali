.class Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioManager.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1458
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public autoSearch(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1874
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1876
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1877
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1878
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->autoSearch(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1880
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1881
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 1884
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1886
    throw p1
.end method

.method public autoSearchWithPreview(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1895
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1897
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1898
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1899
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->autoSearchWithPreview(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1901
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1902
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 1905
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1907
    throw p1
.end method

.method public bandAmChange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3578
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3579
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3580
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3581
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->bandAmChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3584
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3589
    throw v2
.end method

.method public bandChange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2318
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2319
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2320
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2321
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->bandChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2324
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    throw v2
.end method

.method public bandFmChange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3560
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3561
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3562
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3563
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->bandFmChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3566
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3571
    throw v2
.end method

.method public changNextStation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3376
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3377
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3378
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3379
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changNextStation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3382
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3387
    throw v2
.end method

.method public changPreStation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3394
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3395
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3396
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3397
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changPreStation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3400
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3405
    throw v2
.end method

.method public changeBandAm1()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3650
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3651
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3652
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3653
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changeBandAm1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3656
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3661
    throw v2
.end method

.method public changeBandAm2()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3668
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3669
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3670
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3671
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changeBandAm2()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3674
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3679
    throw v2
.end method

.method public changeBandFm1()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3596
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3597
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3598
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3599
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changeBandFm1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3602
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3607
    throw v2
.end method

.method public changeBandFm2()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3614
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3615
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3616
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3617
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changeBandFm2()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3620
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3625
    throw v2
.end method

.method public changeBandFm3()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3632
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3633
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3634
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3635
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->changeBandFm3()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3638
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3643
    throw v2
.end method

.method public dabNext()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3448
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3449
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3450
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3451
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3454
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3459
    throw v2
.end method

.method public dabPowerState(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3541
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3542
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3543
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x67

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3544
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3545
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabPowerState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3548
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3553
    throw p1
.end method

.method public dabPre()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3412
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3413
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3414
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3415
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabPre()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3418
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3423
    throw v2
.end method

.method public dabScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3430
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3431
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3432
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3433
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabScan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3436
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3441
    throw v2
.end method

.method public dabSelFreq(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3503
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3505
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3506
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3507
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabSelFreq(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3510
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3515
    throw p1
.end method

.method public dabSelPre()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3466
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3467
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3468
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3469
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabSelPre()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3472
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3477
    throw v2
.end method

.method public dabSelService(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3522
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3524
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3525
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3526
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->dabSelService(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3529
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3534
    throw p1
.end method

.method public enableAFSwitch(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2711
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2712
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2713
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3d

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2714
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2715
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enableAFSwitch(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2717
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2718
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2721
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 2721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2723
    throw p1
.end method

.method public enableCTSwitch(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2793
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2794
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2795
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x41

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2796
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2797
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enableCTSwitch(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2803
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2799
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2800
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2803
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 2803
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2805
    throw p1
.end method

.method public enableEONSwitch(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2752
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2753
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2754
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3f

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2755
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2756
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enableEONSwitch(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2758
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2759
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2762
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 2762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2764
    throw p1
.end method

.method public enablePSSwitch(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2916
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2917
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2918
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x47

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2919
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2920
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enablePSSwitch(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2922
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2923
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2926
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 2926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2928
    throw p1
.end method

.method public enablePTYSwitch(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2875
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2876
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2877
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x45

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2878
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2879
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enablePTYSwitch(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2881
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2882
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2885
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 2885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2887
    throw p1
.end method

.method public enableRDSSwitch(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2629
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2630
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2631
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x39

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2632
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2633
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enableRDSSwitch(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2635
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2636
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2639
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2641
    throw p1
.end method

.method public enableRegionSwitch(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2834
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2835
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2836
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x43

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2837
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2838
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enableRegionSwitch(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2840
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2841
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2844
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 2844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2846
    throw p1
.end method

.method public enableTASwitch(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2670
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2671
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2672
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3b

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2673
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2674
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->enableTASwitch(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2676
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2677
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2680
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 2680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2682
    throw p1
.end method

.method public forceMonoSwitch()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3318
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3319
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3320
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3321
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->forceMonoSwitch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3324
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3329
    throw v2
.end method

.method public getAFSeekStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1734
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1735
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1736
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1737
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getAFSeekStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1739
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1740
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1743
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1745
    throw v2
.end method

.method public getAFSwitchStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2732
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2733
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2734
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2735
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getAFSwitchStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2737
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2741
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2743
    throw v2
.end method

.method public getAutoSearchStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1614
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1615
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1616
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1617
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getAutoSearchStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1619
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1620
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1623
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1625
    throw v2
.end method

.method public getAutoSearchWithPreviewStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1674
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1675
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1676
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1677
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getAutoSearchWithPreviewStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1679
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1683
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    throw v2
.end method

.method public getCTSwitchStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2814
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2815
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2816
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2817
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCTSwitchStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2819
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2820
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2823
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2825
    throw v2
.end method

.method public getCurPSInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1554
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1555
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1556
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1557
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurPSInfo()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1559
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1560
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1565
    throw v2
.end method

.method public getCurPTYInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1574
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1575
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1576
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1577
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurPTYInfo()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1579
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1580
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1585
    throw v2
.end method

.method public getCurRTInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1594
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1595
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1596
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1597
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurRTInfo()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1599
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1600
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1605
    throw v2
.end method

.method public getCurrPresetFreq(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2567
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2569
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2570
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2571
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurrPresetFreq(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2573
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2574
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2579
    throw p1
.end method

.method public getCurrentArea()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2142
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2143
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2144
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2145
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurrentArea()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2147
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2148
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2153
    throw v2
.end method

.method public getCurrentBand()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1978
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1979
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1980
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1981
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurrentBand()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1983
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1984
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1989
    throw v2
.end method

.method public getCurrentFreq()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2081
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2082
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2083
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2084
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getCurrentFreq()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2086
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2087
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2092
    throw v2
.end method

.method public getDefaultArea()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2182
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2183
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2184
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2185
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getDefaultArea()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2187
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2188
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    throw v2
.end method

.method public getEONStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1854
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1855
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1856
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1857
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getEONStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1859
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1863
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1865
    throw v2
.end method

.method public getEONSwitchStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2773
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2774
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2775
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2776
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getEONSwitchStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2782
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2778
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2779
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2782
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2782
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2784
    throw v2
.end method

.method public getEWSStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1834
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1835
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1836
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1837
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getEWSStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1839
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1840
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1843
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1845
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    return-object v0
.end method

.method public getPSSwitchStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2937
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2938
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2939
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2940
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPSSwitchStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2942
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2943
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2946
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2948
    throw v2
.end method

.method public getPTYSeekStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1774
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1775
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1776
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1777
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPTYSeekStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1779
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1780
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1783
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1785
    throw v2
.end method

.method public getPTYSwitchStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2896
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2897
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2898
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2899
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPTYSwitchStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2901
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2902
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2905
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2907
    throw v2
.end method

.method public getPresetFreqList(I)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2463
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2465
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2466
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2467
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPresetFreqList(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2469
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2470
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2475
    throw p1
.end method

.method public getPresetFreqListCount(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2442
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2444
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2445
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2446
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPresetFreqListCount(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2448
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2449
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2454
    throw p1
.end method

.method public getPresetFreqPSList(I)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2507
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2509
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2510
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2511
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPresetFreqPSList(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2513
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2514
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2519
    throw p1
.end method

.method public getPresetListPSInfo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2548
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2549
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2550
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2551
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPresetListPSInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2554
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2559
    throw v2
.end method

.method public getPresetPSName(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2528
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2530
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2531
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2532
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getPresetPSName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2534
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2535
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
    throw p1
.end method

.method public getRDSSwitchStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2650
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2651
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2652
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2653
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getRDSSwitchStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2655
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2659
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2661
    throw v2
.end method

.method public getRDSType()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3165
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3166
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3167
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3168
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getRDSType()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3170
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3171
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3176
    throw v2
.end method

.method public getRFInputMode()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2040
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2041
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2042
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2043
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getRFInputMode()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2045
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2046
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2051
    throw v2
.end method

.method public getRegionSwitchStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2855
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2856
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2857
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2858
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getRegionSwitchStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2860
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2861
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2864
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2866
    throw v2
.end method

.method public getSeekDownStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1654
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1655
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1656
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1657
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getSeekDownStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1659
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1660
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1663
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1665
    throw v2
.end method

.method public getSeekUpStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1634
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1635
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1636
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1637
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getSeekUpStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1639
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1640
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1643
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1645
    throw v2
.end method

.method public getSignalStrength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1494
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1495
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1496
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1497
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getSignalStrength()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1499
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1500
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1505
    throw v2
.end method

.method public getStepDownStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1714
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1715
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1716
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1717
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getStepDownStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1719
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1720
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1723
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1725
    throw v2
.end method

.method public getStepUpStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1694
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1695
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1696
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1697
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getStepUpStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1699
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1700
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1703
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1705
    throw v2
.end method

.method public getStereoStatus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3357
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3358
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3359
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3360
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getStereoStatus()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3362
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3363
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3368
    throw v2
.end method

.method public getSupportForceMono()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3337
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3338
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3339
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3340
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getSupportForceMono()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3342
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 3346
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3348
    throw v2
.end method

.method public getTASeekStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1794
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1795
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1796
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1797
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTASeekStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1799
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1803
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1803
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1805
    throw v2
.end method

.method public getTAStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1814
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1815
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1816
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1817
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTAStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1819
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1820
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1823
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1825
    throw v2
.end method

.method public getTASwitchStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2691
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2692
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2693
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2694
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTASwitchStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2696
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2697
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2700
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2702
    throw v2
.end method

.method public getTAVolume()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3001
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3002
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3003
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3004
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTAVolume()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3006
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3007
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3012
    throw v2
.end method

.method public getTAVolume_After()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3083
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3084
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3085
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3086
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTAVolume_After()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3088
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3089
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3094
    throw v2
.end method

.method public getTAVolume_Before()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3042
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3043
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3044
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3045
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTAVolume_Before()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3047
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3048
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3052
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3053
    throw v2
.end method

.method public getTPSeekStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1754
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1755
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1756
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1757
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTPSeekStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1759
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1760
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1763
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1765
    throw v2
.end method

.method public getTunerModel()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2380
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2381
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2382
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2383
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getTunerModel()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2385
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2386
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2391
    throw v2
.end method

.method public getValidFreqList(I)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2421
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2423
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2424
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2425
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getValidFreqList(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2427
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2428
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2433
    throw p1
.end method

.method public getValidFreqListCount(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2400
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2402
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2403
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2404
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getValidFreqListCount(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2406
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2407
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2412
    throw p1
.end method

.method public getVoiceChannelType()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1474
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1475
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1476
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1477
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->getVoiceChannelType()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1479
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1480
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1485
    throw v2
.end method

.method public initRadioData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3260
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3261
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3262
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3263
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->initRadioData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3266
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3271
    throw v2
.end method

.method public isMute6686()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3103
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3104
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3105
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3106
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->isMute6686()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3108
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3109
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 3112
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3114
    throw v2
.end method

.method public isRDSStation()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1534
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1535
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1536
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1537
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->isRDSStation()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1539
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1540
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1543
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1545
    throw v2
.end method

.method public isTP()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1514
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1515
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1516
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1517
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->isTP()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1519
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1520
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1523
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1525
    throw v2
.end method

.method public isValidFreq()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2101
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2102
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2103
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2104
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->isValidFreq()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2106
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2107
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2110
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2112
    throw v2
.end method

.method public mute6686(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3686
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3687
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3688
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3689
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3690
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->mute6686(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3693
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3698
    throw p1
.end method

.method public playPresetFreq(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2296
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2298
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2299
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2300
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->playPresetFreq(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2303
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2308
    throw p1
.end method

.method public removeRDSInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3241
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3242
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3243
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3244
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3245
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->removeRDSInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3248
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3253
    throw p1
.end method

.method public removeRadioInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3203
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3204
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3205
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3206
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3207
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->removeRadioInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3210
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3215
    throw p1
.end method

.method public restoreFactorySettings()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2609
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2610
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2611
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2612
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->restoreFactorySettings()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2614
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2615
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2618
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2620
    throw v2
.end method

.method public saveAppdata(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3280
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3282
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3283
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3284
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->saveAppdata(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3287
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3292
    throw p1
.end method

.method public searchSpecialRDSProgram(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3144
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3146
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3147
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3148
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->searchSpecialRDSProgram(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3150
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3151
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 3154
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 3154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3156
    throw p1
.end method

.method public searchStepDown(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1957
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1959
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1960
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1961
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->searchStepDown(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1963
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1964
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 1967
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1969
    throw p1
.end method

.method public searchStepUp(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1936
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1939
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1940
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->searchStepUp(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1942
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 1946
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1948
    throw p1
.end method

.method public seekDown()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2274
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2275
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2276
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2277
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->seekDown()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2279
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2280
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2283
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2285
    throw v2
.end method

.method public seekUp()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2251
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2252
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2253
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2254
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->seekUp()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2256
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2257
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2260
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2262
    throw v2
.end method

.method public sendAppdata(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3299
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3301
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3302
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3303
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->sendAppdata(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3306
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3311
    throw p1
.end method

.method public setCurrPresetFreq(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2588
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2590
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2591
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2592
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setCurrPresetFreq(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2594
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2595
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2598
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2600
    throw p1
.end method

.method public setCurrentArea(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2121
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2123
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2124
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2125
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setCurrentArea(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2127
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2128
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2131
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2133
    throw p1
.end method

.method public setCurrentBand(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1998
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2000
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2001
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2002
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setCurrentBand(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2004
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2005
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2008
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2010
    throw p1
.end method

.method public setCurrentFreq(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2060
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2062
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2063
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2064
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setCurrentFreq(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2066
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2067
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2070
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    throw p1
.end method

.method public setDefaultArea()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2162
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2163
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2164
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2165
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setDefaultArea()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2167
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2168
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2171
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2173
    throw v2
.end method

.method public setPresetFreqList(IILjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2484
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2485
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2486
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2487
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2488
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2489
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2490
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setPresetFreqList(IILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2492
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2493
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2496
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2498
    throw p1
.end method

.method public setRDSAFLevel(B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3123
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3125
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3126
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3127
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setRDSAFLevel(B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3129
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3130
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 3133
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 3133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3135
    throw p1
.end method

.method public setRDSInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3222
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3223
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3224
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3225
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3226
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setRDSInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3229
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3234
    throw p1
.end method

.method public setRDSType(B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2957
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2959
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2960
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2961
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setRDSType(B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2963
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2964
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2967
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2969
    throw p1
.end method

.method public setRFInputMode(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2019
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2021
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2022
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2023
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setRFInputMode(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2025
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2026
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2029
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2031
    throw p1
.end method

.method public setRadioInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3184
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3185
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3186
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3187
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3188
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setRadioInfoChangeListener(Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3191
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3196
    throw p1
.end method

.method public setTAVolume(III)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2978
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2979
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2980
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2981
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2982
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2983
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2984
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setTAVolume(III)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2986
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2987
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2990
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2992
    throw p1
.end method

.method public setTAVolume_After(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3058
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3062
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3063
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3064
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3065
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3066
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setTAVolume_After(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3068
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3069
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 3072
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 3072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3074
    throw p1
.end method

.method public setTAVolume_Before(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3021
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3022
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3023
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3024
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3025
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setTAVolume_Before(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3027
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3028
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 3031
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 3031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3033
    throw p1
.end method

.method public setTunerReg(BB)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2337
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2339
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2340
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2341
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2342
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setTunerReg(BB)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2344
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2345
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2348
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2350
    throw p1
.end method

.method public setTunerRegWithModel(B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2359
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2361
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2362
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2363
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->setTunerRegWithModel(B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2365
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2366
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2369
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2371
    throw p1
.end method

.method public stopSearch()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 1916
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1917
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1918
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1919
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->stopSearch()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1921
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1922
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1925
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1927
    throw v2
.end method

.method public switchPowerState(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 3484
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3485
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3486
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3487
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3488
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->switchPowerState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3491
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3496
    throw p1
.end method

.method public tuneDown()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2228
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2229
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2230
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2231
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->tuneDown()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2233
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2234
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2237
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2239
    throw v2
.end method

.method public tuneUp()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioManager"

    .line 2205
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2206
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2207
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2208
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioManager;->tuneUp()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2210
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2211
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2214
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2216
    throw v2
.end method
