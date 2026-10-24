.class Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIPodService.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1657
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public accessoryHIDReport(BB)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3605
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3606
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3607
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3608
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3609
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3610
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->accessoryHIDReport(BB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3613
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3618
    throw p1
.end method

.method public addAuthenticationListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1851
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1852
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1853
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1854
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1855
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->addAuthenticationListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1858
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1863
    throw p1
.end method

.method public addAuthenticationStateListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;)V
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
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1894
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1895
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1896
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1897
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1898
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->addAuthenticationStateListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1901
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1906
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelCommand()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2079
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2080
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2081
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2082
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->cancelCommand()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2084
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2085
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2090
    throw v2
.end method

.method public enterExtendedInterfaceMode()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1808
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1809
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1810
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1811
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->enterExtendedInterfaceMode()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1813
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1814
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1819
    throw v2
.end method

.method public exitExtendedInterfaceMode()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1828
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1829
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1830
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1831
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->exitExtendedInterfaceMode()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1833
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1834
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1839
    throw v2
.end method

.method public getArtworkData(B[BII)Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2749
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2751
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2752
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2754
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2755
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2756
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getArtworkData(B[BII)Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2758
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2759
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2760
    sget-object p1, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2767
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2769
    throw p1
.end method

.method public getArtworkFormats()Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2696
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2697
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2698
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2699
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getArtworkFormats()Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2701
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2702
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2703
    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/midwareproxy/iPod/ArtworkFormats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2710
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2712
    throw v2
.end method

.method public getArtworkTimes(B[BIII)Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2807
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2808
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2809
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2810
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2811
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2812
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2813
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2814
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2815
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getArtworkTimes(B[BIII)Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2817
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2818
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2819
    sget-object p1, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2826
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2828
    throw p1
.end method

.method public getAudiobookSpeed()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3298
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3299
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3300
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3301
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getAudiobookSpeed()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3303
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3304
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3309
    throw v2
.end method

.method public getAuthenticationState()I
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
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1936
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1937
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1938
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1939
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getAuthenticationState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1941
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1942
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1947
    throw v2
.end method

.method public getCurrentPlayingTrackChapterInfo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2534
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2535
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2536
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2537
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getCurrentPlayingTrackChapterInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2540
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2545
    throw v2
.end method

.method public getCurrentPlayingTrackChapterName(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2621
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2623
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2624
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2625
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getCurrentPlayingTrackChapterName(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2628
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2633
    throw p1
.end method

.method public getCurrentPlayingTrackChapterPlayStatus(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2591
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2593
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2594
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2595
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getCurrentPlayingTrackChapterPlayStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2598
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2603
    throw p1
.end method

.method public getCurrentPlayingTrackIndex()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2910
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2911
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2912
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2913
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getCurrentPlayingTrackIndex()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2915
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2921
    throw v2
.end method

.method public getDBTrackInfo(IILcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2425
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2426
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2427
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    .line 2429
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2430
    invoke-virtual {p3, v0, v2}, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2433
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2435
    :goto_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2436
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2437
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getDBTrackInfo(IILcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2440
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2445
    throw p1
.end method

.method public getDBiTunesInfo(B)Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2363
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2365
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2366
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2367
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getDBiTunesInfo(B)Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2369
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2370
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2371
    sget-object p1, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/DBiTunesInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2378
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2380
    throw p1
.end method

.method public getIndexedPlayingTrackAlbumName(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2998
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3000
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3001
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3002
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getIndexedPlayingTrackAlbumName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 3004
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3005
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 3008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3010
    throw p1
.end method

.method public getIndexedPlayingTrackArtistName(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2969
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2971
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2972
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2973
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getIndexedPlayingTrackArtistName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2975
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2976
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2981
    throw p1
.end method

.method public getIndexedPlayingTrackInfo(BII)Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2662
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2663
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2664
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2665
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2666
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2667
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2668
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getIndexedPlayingTrackInfo(BII)Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2670
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2671
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2672
    sget-object p1, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/PlayingTrackInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2679
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2681
    throw p1
.end method

.method public getIndexedPlayingTrackTitle(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2939
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2941
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2942
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2943
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getIndexedPlayingTrackTitle(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2945
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2946
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2951
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    return-object v0
.end method

.method public getMFiProtocol()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1956
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1957
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1958
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1959
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getMFiProtocol()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1961
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1962
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1967
    throw v2
.end method

.method public getNumPlayingTracks()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3088
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3089
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3090
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3091
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getNumPlayingTracks()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3093
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3094
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3099
    throw v2
.end method

.method public getNumberCategorizedDBRecords(B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2254
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2255
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2256
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2257
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2258
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getNumberCategorizedDBRecords(B)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2260
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2261
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2266
    throw p1
.end method

.method public getPBTrackInfo(IILcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2459
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2461
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    .line 2463
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2464
    invoke-virtual {p3, v0, v2}, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2467
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2469
    :goto_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2470
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2471
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getPBTrackInfo(IILcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2474
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2479
    throw p1
.end method

.method public getPlayStatus(B)Lcom/hzbhd/midwareproxy/iPod/PlayStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2846
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2847
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2848
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2849
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2850
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getPlayStatus(B)Lcom/hzbhd/midwareproxy/iPod/PlayStatus;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2852
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2853
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2854
    sget-object p1, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/PlayStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2861
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2863
    throw p1
.end method

.method public getPlaylistInfo(BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2499
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2501
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2502
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2503
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2504
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getPlaylistInfo(BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2507
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2512
    throw p1
.end method

.method public getPlugEventState()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3703
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3704
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3705
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3706
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getPlugEventState()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3708
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3709
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 3712
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3714
    throw v2
.end method

.method public getPlugEventType()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3683
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3684
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3685
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3686
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getPlugEventType()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3688
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3689
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3694
    throw v2
.end method

.method public getRepeat()B
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
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3204
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3205
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3206
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3207
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getRepeat()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3209
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3210
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3215
    throw v2
.end method

.method public getShuffle()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3146
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3147
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3148
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3149
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getShuffle()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3151
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3152
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3157
    throw v2
.end method

.method public getSupportedEventNotification()Lcom/hzbhd/midwareproxy/iPod/EventNotification;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2102
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2103
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2104
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2105
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getSupportedEventNotification()Lcom/hzbhd/midwareproxy/iPod/EventNotification;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2107
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2108
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2109
    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/midwareproxy/iPod/EventNotification;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2116
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2118
    throw v2
.end method

.method public getTrackArtworkData(III)Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2721
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2723
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2724
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2725
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2726
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2727
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getTrackArtworkData(III)Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2729
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2730
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2731
    sget-object p1, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/TrackArtworkData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2738
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2740
    throw p1
.end method

.method public getTrackArtworkTimes(IIII)Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2778
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2780
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2781
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2782
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2783
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2784
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2785
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getTrackArtworkTimes(IIII)Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2787
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2788
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2789
    sget-object p1, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/iPod/TimeOffsetArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2796
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2798
    throw p1
.end method

.method public getUIDTrackInfo([BLcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2388
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 2391
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2392
    invoke-virtual {p2, v0, v2}, Lcom/hzbhd/midwareproxy/iPod/TrackInformationMask;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2395
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2397
    :goto_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2398
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2399
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getUIDTrackInfo([BLcom/hzbhd/midwareproxy/iPod/TrackInformationMask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2402
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2407
    throw p1
.end method

.method public getUsbPosition()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1784
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1785
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1786
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1787
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->getUsbPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1789
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1790
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1795
    throw v2
.end method

.method public iPodAudioPause()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1718
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1719
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1720
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1721
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->iPodAudioPause()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1723
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1724
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1729
    throw v2
.end method

.method public iPodAudioPlay()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1698
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1699
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1700
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1701
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->iPodAudioPlay()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1703
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1704
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1709
    throw v2
.end method

.method public iPodAudioSampleRateChange(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1677
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1679
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1680
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1681
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->iPodAudioSampleRateChange(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1683
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1684
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1689
    throw p1
.end method

.method public iPodAudioSetVolume(FF)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1758
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1760
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1761
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1762
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1763
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->iPodAudioSetVolume(FF)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1765
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1766
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1771
    throw p1
.end method

.method public iPodAudioStop()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1738
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1739
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1740
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1741
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->iPodAudioStop()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1743
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1744
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1749
    throw v2
.end method

.method public initCarPlayFunc()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3664
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3665
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3666
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3667
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->initCarPlayFunc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3670
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3675
    throw v2
.end method

.method public ipod_get_activate(ILjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3803
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3804
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3805
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3806
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3807
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3808
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->ipod_get_activate(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3810
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3811
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3816
    throw p1
.end method

.method public ipod_set_activate(ILjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3781
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3783
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3784
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3785
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3786
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->ipod_set_activate(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3788
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3789
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3794
    throw p1
.end method

.method public jni_ipod_set_otg_mode(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3825
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3826
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3827
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3828
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3829
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->jni_ipod_set_otg_mode(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3831
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3832
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3837
    throw p1
.end method

.method public launchCarLife(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3645
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3647
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3648
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3649
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->launchCarLife(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3652
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3657
    throw p1
.end method

.method public playControl(B)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3060
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3062
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3063
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3064
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->playControl(B)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3066
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3067
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3072
    throw p1
.end method

.method public playCurrentSelection(I)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2313
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2315
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2316
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2317
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->playCurrentSelection(I)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2319
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2320
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2325
    throw p1
.end method

.method public playMediaLibraryCollection(Ljava/lang/String;BJLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3362
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3364
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3365
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3366
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3367
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3368
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3369
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->playMediaLibraryCollection(Ljava/lang/String;BJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3372
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3377
    throw p1
.end method

.method public playMediaLibraryCurrentSelection(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3322
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3324
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3325
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3326
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->playMediaLibraryCurrentSelection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3329
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3334
    throw p1
.end method

.method public playMediaLibraryItems([Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3341
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3343
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3344
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3345
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3346
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3347
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->playMediaLibraryItems([Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3350
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3355
    throw p1
.end method

.method public playMediaLibrarySpecial(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3384
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3386
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3387
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3388
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3389
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->playMediaLibrarySpecial(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3392
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3397
    throw p1
.end method

.method public registerCarPlayiAP2Listener(Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3722
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3723
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3724
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3725
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3726
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->registerCarPlayiAP2Listener(Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3729
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3734
    throw p1
.end method

.method public removeAuthencationListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1875
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1876
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1877
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1878
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1879
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->removeAuthencationListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1882
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1887
    throw p1
.end method

.method public removeAuthenticationStateListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1913
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1914
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1915
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1916
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1917
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->removeAuthenticationStateListener(Lcom/hzbhd/midwareproxy/iPod/aidl/AuthenticationStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1920
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1925
    throw p1
.end method

.method public removeCarPlayiAP2Listener(Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3741
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3742
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3743
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3744
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3745
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->removeCarPlayiAP2Listener(Lcom/hzbhd/midwareproxy/iPod/aidl/ICarPlayiAP2Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3748
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3753
    throw p1
.end method

.method public resetDBSelection()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2194
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2195
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2196
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2197
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->resetDBSelection()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2199
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2200
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2205
    throw v2
.end method

.method public resetDBSelectionHierarchy(I)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2342
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2344
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2345
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2346
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->resetDBSelectionHierarchy(I)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2348
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2354
    throw p1
.end method

.method public retrieveCategorizedDatabaseRecords(BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2284
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2286
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2287
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2288
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2289
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2290
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->retrieveCategorizedDatabaseRecords(BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2293
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2298
    throw p1
.end method

.method public selectDBRecord(BI)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2224
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2227
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2228
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2229
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->selectDBRecord(BI)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2231
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2232
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2237
    throw p1
.end method

.method public setAudiobookSpeed(BB)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3263
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3264
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3265
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3266
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3267
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3268
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setAudiobookSpeed(BB)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3270
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3271
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3276
    throw p1
.end method

.method public setCurrentPlayingTrack(I)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3115
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3116
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3117
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3118
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3119
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setCurrentPlayingTrack(I)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3121
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3122
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3127
    throw p1
.end method

.method public setCurrentPlayingTrackChapterInfo(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2563
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2564
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2565
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2566
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2567
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setCurrentPlayingTrackChapterInfo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2570
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2575
    throw p1
.end method

.method public setDigitalAudioEventListener(Lcom/hzbhd/midwareproxy/iPod/aidl/DigitalAudioEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2002
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2003
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/DigitalAudioEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2004
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2005
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2006
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setDigitalAudioEventListener(Lcom/hzbhd/midwareproxy/iPod/aidl/DigitalAudioEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2009
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2014
    throw p1
.end method

.method public setDisplayRemoteLingoRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2048
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2049
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2050
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2051
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2052
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setDisplayRemoteLingoRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2055
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2060
    throw p1
.end method

.method public setEventNotification(Lcom/hzbhd/midwareproxy/iPod/EventNotification;)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2151
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2153
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    invoke-virtual {p1, v0, v2}, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2157
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2159
    :goto_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2160
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2161
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setEventNotification(Lcom/hzbhd/midwareproxy/iPod/EventNotification;)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2163
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2164
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2169
    throw p1
.end method

.method public setExtendedInterfaceRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 1979
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1980
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1981
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1982
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1983
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setExtendedInterfaceRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1986
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1991
    throw p1
.end method

.method public setGeneralLingoRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2025
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2026
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2027
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2028
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2029
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setGeneralLingoRetListener(Lcom/hzbhd/midwareproxy/iPod/aidl/GeneralLingoRetListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2032
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2037
    throw p1
.end method

.method public setNowPlayingInfoListener(Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3456
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3457
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3458
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3459
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3460
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setNowPlayingInfoListener(Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3463
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3468
    throw p1
.end method

.method public setPlayStatusChangeNotification(Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3026
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 3028
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3029
    invoke-virtual {p1, v0, v2}, Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3032
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3034
    :goto_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3035
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3036
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setPlayStatusChangeNotification(Lcom/hzbhd/midwareproxy/iPod/FourBytesStatus;)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3038
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3039
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3044
    throw p1
.end method

.method public setProperty(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3760
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3762
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3763
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3764
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3765
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setProperty(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3768
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3773
    throw p1
.end method

.method public setRemoteEventNotification(Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;)B
    .locals 5
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
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2875
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2877
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2878
    invoke-virtual {p1, v0, v2}, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2881
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2883
    :goto_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2884
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2885
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setRemoteEventNotification(Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2887
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2888
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2893
    throw p1
.end method

.method public setRepeat(BB)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3233
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3236
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3237
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3238
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setRepeat(BB)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3240
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3241
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3246
    throw p1
.end method

.method public setShuffle(BB)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3175
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3177
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3178
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3179
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3180
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setShuffle(BB)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3182
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3183
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3188
    throw p1
.end method

.method public setUIModeCommand(B)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 2130
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2132
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2133
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2134
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->setUIModeCommand(B)B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2136
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2137
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2142
    throw p1
.end method

.method public startHID()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3587
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3588
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3589
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3590
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->startHID()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3593
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3598
    throw v2
.end method

.method public startMediaLibraryInformation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3475
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3476
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3477
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3478
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->startMediaLibraryInformation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3481
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3486
    throw v2
.end method

.method public startMediaLibraryUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3511
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3512
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3513
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3514
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->startMediaLibraryUpdates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3517
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3522
    throw v2
.end method

.method public startNowPlayingUpdates(Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3406
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 3408
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3409
    invoke-virtual {p1, v0, v3}, Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3412
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 3415
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3416
    invoke-virtual {p2, v0, v3}, Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 3419
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3421
    :goto_1
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3422
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3423
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->startNowPlayingUpdates(Lcom/hzbhd/midwareproxy/iPod/iap2/MediaItemAttributesIDs;Lcom/hzbhd/midwareproxy/iPod/iap2/PlaybackAttributesIDs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3426
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3431
    throw p1
.end method

.method public startUSBDeviceModeAudio()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3549
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3550
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3551
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3552
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->startUSBDeviceModeAudio()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3555
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3560
    throw v2
.end method

.method public stopHID()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3625
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3626
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3627
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3628
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->stopHID()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3631
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3636
    throw v2
.end method

.method public stopMediaLibraryInformation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3493
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3494
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3495
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3496
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->stopMediaLibraryInformation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3499
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3504
    throw v2
.end method

.method public stopMediaLibraryUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3529
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3530
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3531
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3532
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->stopMediaLibraryUpdates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3535
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3540
    throw v2
.end method

.method public stopNowPlayingUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3438
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3439
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3440
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3441
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->stopNowPlayingUpdates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3444
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3449
    throw v2
.end method

.method public stopUSBDeviceModeAudio()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.IIPodService"

    .line 3567
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3568
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3569
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3570
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/iPod/aidl/IIPodService;->stopUSBDeviceModeAudio()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3573
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3578
    throw v2
.end method
