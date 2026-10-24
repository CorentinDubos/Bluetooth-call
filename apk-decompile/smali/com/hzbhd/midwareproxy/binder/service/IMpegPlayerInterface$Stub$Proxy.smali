.class Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMpegPlayerInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1632
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1636
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public backward()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1940
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1941
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1942
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1943
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->backward()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1945
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1946
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1949
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1951
    throw v2
.end method

.method public discGoto(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2320
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2324
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2325
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->discGoto(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2328
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2333
    throw p1
.end method

.method public display()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2058
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2061
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2062
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2063
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2064
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->display()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2066
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2067
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2070
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    throw v2
.end method

.method public duration()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1900
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1901
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1902
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1903
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->duration()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    .line 1905
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1906
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    :catchall_0
    move-exception v2

    .line 1909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1911
    throw v2
.end method

.method public enterMpegSrc32(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3666
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3667
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3668
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3669
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3670
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->enterMpegSrc32(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3673
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3678
    throw p1
.end method

.method public forward()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1960
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1961
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1962
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1963
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->forward()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1965
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1966
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1969
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1971
    throw v2
.end method

.method public getCDTrackName(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3131
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3133
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3134
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3135
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCDTrackName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 3137
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3138
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 3141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3143
    throw p1
.end method

.method public getCDTracksCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3028
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3029
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3030
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3031
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCDTracksCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3037
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3033
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3034
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3037
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3037
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3039
    throw v2
.end method

.method public getChildrenLockLevel_32()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4014
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 4017
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4018
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4019
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4020
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getChildrenLockLevel_32()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4022
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4023
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 4026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4028
    throw v2
.end method

.method public getChildrenLockPassword_32()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 4037
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4038
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4039
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4040
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getChildrenLockPassword_32()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 4042
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4043
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4048
    throw v2
.end method

.method public getCurrAudioLang()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2601
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2602
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2603
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2604
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCurrAudioLang()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2606
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2607
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2612
    throw v2
.end method

.method public getCurrAudioLangText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2581
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2582
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2583
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2584
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCurrAudioLangText()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2586
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2587
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2592
    throw v2
.end method

.method public getCurrSubtitle()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2561
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2562
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2563
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2564
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCurrSubtitle()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2566
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2567
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2572
    throw v2
.end method

.method public getCurrSubtitleText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2541
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2542
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2543
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2544
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCurrSubtitleText()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2546
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2547
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2552
    throw v2
.end method

.method public getCurrentTotalNo()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1706
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1707
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1708
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1709
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getCurrentTotalNo()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1711
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1717
    throw v2
.end method

.method public getDVDAudio_32()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3997
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3998
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3999
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4000
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDVDAudio_32()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 4002
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4003
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4008
    throw v2
.end method

.method public getDVDChaptersCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3068
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3069
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3070
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3071
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDVDChaptersCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3073
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3074
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3079
    throw v2
.end method

.method public getDVDCurrChapNumber()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2481
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2482
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2483
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2484
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDVDCurrChapNumber()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2486
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2492
    throw v2
.end method

.method public getDVDMenuLang_32()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3957
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3958
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3959
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3960
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDVDMenuLang_32()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3962
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3963
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3968
    throw v2
.end method

.method public getDVDOsdLang_32()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3937
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3938
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3939
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3940
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDVDOsdLang_32()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3942
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3943
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3948
    throw v2
.end method

.method public getDVDSubTitle_32()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3977
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3978
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3979
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3980
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDVDSubTitle_32()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3982
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3983
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3988
    throw v2
.end method

.method public getDVDTitlesCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3048
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3049
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3050
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3051
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDVDTitlesCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3053
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3054
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3059
    throw v2
.end method

.method public getDeviceStatus()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3380
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3381
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3382
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3383
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDeviceStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3386
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3391
    throw v2
.end method

.method public getDiscType()I
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2421
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2422
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2423
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2424
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDiscType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2426
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2427
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2432
    throw v2
.end method

.method public getDivxDeactivCode()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3532
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3533
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3534
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3535
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDivxDeactivCode()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3537
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3538
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3543
    throw v2
.end method

.method public getDivxRegTime()I
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3494
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3495
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3496
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3497
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDivxRegTime()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3499
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3500
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3505
    throw v2
.end method

.method public getDivxRegionCode()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3436
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3437
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3438
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3439
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getDivxRegionCode()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3441
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3442
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3447
    throw v2
.end method

.method public getId3Info()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1687
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1688
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1689
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1690
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getId3Info()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1693
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1698
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    return-object v0
.end method

.method public getLastPlayingFile(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2764
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2765
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2766
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2767
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2768
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getLastPlayingFile(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2770
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2771
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2776
    throw p1
.end method

.method public getList(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2340
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2342
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2343
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2344
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2345
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getList(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2348
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2353
    throw p1
.end method

.method public getMpegCurrAlbumName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2664
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2665
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2666
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2667
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegCurrAlbumName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2669
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2670
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2675
    throw v2
.end method

.method public getMpegCurrArtistName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2684
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2685
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2686
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2687
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegCurrArtistName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2689
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2690
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2695
    throw v2
.end method

.method public getMpegCurrPlayingIndex()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2704
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2705
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2706
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2707
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegCurrPlayingIndex()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2709
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2710
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2715
    throw v2
.end method

.method public getMpegCurrPlayingName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2644
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2645
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2646
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2647
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegCurrPlayingName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2649
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2650
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2655
    throw v2
.end method

.method public getMpegCurrentPlayingType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2724
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2725
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2726
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2727
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegCurrentPlayingType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2729
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2730
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2735
    throw v2
.end method

.method public getMpegPlayingTimeCurr()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2805
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2806
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2807
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2808
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegPlayingTimeCurr()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2810
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2811
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2816
    throw v2
.end method

.method public getMpegPlayingTimeTotal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2785
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2786
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2787
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2788
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegPlayingTimeTotal()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2790
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2791
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2796
    throw v2
.end method

.method public getMpegRootMenuState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2461
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2462
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2463
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2464
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegRootMenuState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2466
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2467
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2472
    throw v2
.end method

.method public getMpegStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1648
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1649
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1650
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1651
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1653
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1654
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    move v3, v4

    .line 1657
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception v2

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1659
    throw v2
.end method

.method public getMpegTestNumber()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3571
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3572
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3573
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3574
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegTestNumber()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3576
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3577
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3582
    throw v2
.end method

.method public getMpegVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2744
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2745
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2746
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2747
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getMpegVersion()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2749
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2750
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2755
    throw v2
.end method

.method public getNameReqStatus()Z
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2224
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2225
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2226
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2227
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getNameReqStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2229
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2230
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2233
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2235
    throw v2
.end method

.method public getPlayInfo()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1668
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1669
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1670
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1671
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getPlayInfo()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1673
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1677
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1679
    throw v2
.end method

.method public getRepeatMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1880
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1881
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1882
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1883
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getRepeatMode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1885
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1886
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1891
    throw v2
.end method

.method public getRomFileName(III)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3174
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3176
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3177
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3178
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3179
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3180
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getRomFileName(III)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 3182
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3183
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 3186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3188
    throw p1
.end method

.method public getRomFilesCount(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3109
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3111
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3112
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3113
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3114
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getRomFilesCount(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3116
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3117
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3122
    throw p1
.end method

.method public getRomFolderName(II)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3152
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3154
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3155
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3156
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3157
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getRomFolderName(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 3159
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3160
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 3163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3165
    throw p1
.end method

.method public getRomFoldersCount(I)I
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3088
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3090
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3091
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3092
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getRomFoldersCount(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3094
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3095
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 3098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3100
    throw p1
.end method

.method public getShuffleMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1860
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1861
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1862
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1863
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->getShuffleMode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1865
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1866
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1871
    throw v2
.end method

.method public gotoChapter(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2263
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2265
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2266
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2267
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2268
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->gotoChapter(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2271
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2276
    throw p1
.end method

.method public gotoTrack(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2283
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2284
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2285
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2286
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2287
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->gotoTrack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2290
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2295
    throw p1
.end method

.method public initSysSet_32()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 4056
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4057
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4058
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4059
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->initSysSet_32()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4062
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 4065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4067
    throw v2
.end method

.method public initTrayData_32()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3804
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3805
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3806
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3807
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->initTrayData_32()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3810
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3815
    throw v2
.end method

.method public isDiscExist()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2401
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2402
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2403
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2404
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->isDiscExist()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2406
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2407
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2410
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2412
    throw v2
.end method

.method public isDiscQueryEnd()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2441
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2442
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2443
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2444
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->isDiscQueryEnd()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2446
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2447
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2450
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2452
    throw v2
.end method

.method public isDivxActive()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3456
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3457
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3458
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3459
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->isDivxActive()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3461
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3462
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 3465
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3467
    throw v2
.end method

.method public isFirstStart()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 4112
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4113
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4114
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4115
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->isFirstStart()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4117
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4118
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 4121
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4123
    throw v2
.end method

.method public isPlaying()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1729
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1730
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1731
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1732
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->isPlaying()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1734
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1735
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1738
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1740
    throw v2
.end method

.method public next()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1820
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1821
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1822
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1823
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->next()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1826
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1831
    throw v2
.end method

.method public passMpegTouchEvent(ZII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2621
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2622
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2623
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2624
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2625
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2626
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2627
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->passMpegTouchEvent(ZII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2629
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2630
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2635
    throw p1
.end method

.method public pause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1766
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1767
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1768
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1769
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1772
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1777
    throw v2
.end method

.method public photoMove(I)Z
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2040
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2042
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2043
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2044
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->photoMove(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2046
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2050
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2052
    throw p1
.end method

.method public photoRotateLeft()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2161
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2162
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2163
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2164
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->photoRotateLeft()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2166
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2170
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2172
    throw v2
.end method

.method public photoRotateRight()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2141
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2142
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2143
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2144
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->photoRotateRight()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2146
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2147
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2150
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2152
    throw v2
.end method

.method public photoZoomIn()Z
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2121
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2122
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2123
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2124
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->photoZoomIn()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2126
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2127
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2130
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2132
    throw v2
.end method

.method public photoZoomOut()Z
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2101
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2102
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2103
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2104
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->photoZoomOut()Z

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

.method public play()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1784
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1785
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1786
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1787
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1790
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1795
    throw v2
.end method

.method public playMpegFast()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2948
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2949
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2950
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2951
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->playMpegFast()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2953
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2954
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2959
    throw v2
.end method

.method public playMpegSlow()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2968
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2969
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2970
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2971
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->playMpegSlow()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2973
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2974
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2979
    throw v2
.end method

.method public playRootMenu()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2181
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2182
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2183
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2184
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->playRootMenu()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2186
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2187
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2190
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2192
    throw v2
.end method

.method public position()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1920
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1921
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1922
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1923
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->position()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    .line 1925
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1926
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    :catchall_0
    move-exception v2

    .line 1929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1931
    throw v2
.end method

.method public prev()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1802
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1803
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1804
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1805
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->prev()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1808
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1813
    throw v2
.end method

.method public registerBackCameraChangeCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 4132
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4133
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4134
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4135
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4136
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->registerBackCameraChangeCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4138
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 4142
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 4142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4144
    throw p1
.end method

.method public registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;)Z
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3281
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3282
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3283
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3284
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3285
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3287
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 3291
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 3291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3293
    throw p1
.end method

.method public registerRealCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3322
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3323
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3324
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3325
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3326
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->registerRealCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3328
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3329
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 3332
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 3332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3334
    throw p1
.end method

.method public releaseSource()V
    .locals 5
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3362
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3363
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3364
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3365
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->releaseSource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3368
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3373
    throw v2
.end method

.method public repeat()Z
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1980
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1981
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1982
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1983
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->repeat()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1985
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1986
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1989
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1991
    throw v2
.end method

.method public reqDivxDeactiveCode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3513
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3514
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3515
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3516
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->reqDivxDeactiveCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3519
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3524
    throw v2
.end method

.method public reqDivxRegTime()V
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3475
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3476
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3477
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3478
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->reqDivxRegTime()V
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

.method public reqDivxRegionCode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3417
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3418
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3419
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3420
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->reqDivxRegionCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3423
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 3426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3428
    throw v2
.end method

.method public reqMpegUpgrade()V
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2379
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2380
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2381
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2382
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->reqMpegUpgrade()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2385
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2390
    throw v2
.end method

.method public resetMpegSystem_32()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 4093
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4094
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4095
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4096
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->resetMpegSystem_32()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4099
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 4102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4104
    throw v2
.end method

.method public rptControllBarStatus(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3398
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3399
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3400
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x58

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3401
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3402
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->rptControllBarStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3405
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3410
    throw p1
.end method

.method public scan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2302
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2303
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2304
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2305
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->scan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2308
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2313
    throw v2
.end method

.method public seek(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1839
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1841
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1842
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1843
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->seek(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1845
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1846
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 1849
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1851
    throw p1
.end method

.method public selectType(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2360
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2362
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2363
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2364
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->selectType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2367
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2372
    throw p1
.end method

.method public sendEjectKey32()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3686
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3687
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3688
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3689
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->sendEjectKey32()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3691
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3692
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 3695
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3697
    throw v2
.end method

.method public setAngle()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2908
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2909
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2910
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2911
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setAngle()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2913
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2914
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2917
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2919
    throw v2
.end method

.method public setAudio()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2884
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2888
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2889
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2890
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2891
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setAudio()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2893
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2894
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2897
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2899
    throw v2
.end method

.method public setAutoTrayInTime_32(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3762
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3764
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3765
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3766
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setAutoTrayInTime_32(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3769
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3774
    throw p1
.end method

.method public setCDTrackToPlay(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3196
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3198
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3199
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3200
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setCDTrackToPlay(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3203
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3208
    throw p1
.end method

.method public setChildrenLockLevel_32(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3898
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3899
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3900
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3901
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3902
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setChildrenLockLevel_32(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3905
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3910
    throw p1
.end method

.method public setChildrenLockPassword_32(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3917
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3918
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3919
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3920
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3921
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setChildrenLockPassword_32(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3924
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3929
    throw p1
.end method

.method public setDVDAudioLang()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2521
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2522
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2523
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2524
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setDVDAudioLang()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2526
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2527
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2532
    throw v2
.end method

.method public setDVDAudio_32(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3841
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3843
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3844
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3845
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setDVDAudio_32(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3848
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3853
    throw p1
.end method

.method public setDVDFileToPlay(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3236
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3238
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3239
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3240
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3241
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setDVDFileToPlay(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3244
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3249
    throw p1
.end method

.method public setDVDMenuLang_32(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3879
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3880
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3881
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3882
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3883
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setDVDMenuLang_32(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3886
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3891
    throw p1
.end method

.method public setDVDOsdLang_32(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3822
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3823
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3824
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3825
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3826
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setDVDOsdLang_32(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3829
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3834
    throw p1
.end method

.method public setDVDSubTitle_32(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3860
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3861
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3862
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3863
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3864
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setDVDSubTitle_32(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3867
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3872
    throw p1
.end method

.method public setDVDSubtitle()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2501
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2502
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2503
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2504
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setDVDSubtitle()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2506
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2512
    throw v2
.end method

.method public setDvdSettings32([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3647
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3648
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3649
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3650
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3651
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setDvdSettings32([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3654
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3659
    throw p1
.end method

.method public setMechanismCustCode_32(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3783
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3785
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3786
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3787
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMechanismCustCode_32(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3790
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3795
    throw p1
.end method

.method public setMpegDirection(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2845
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2846
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2847
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2848
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2849
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMpegDirection(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2851
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2852
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2857
    throw p1
.end method

.method public setMpegMode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3551
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3552
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3553
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3554
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3555
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMpegMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3558
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3563
    throw p1
.end method

.method public setMpegNotifyLanguage(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3590
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3591
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3592
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3593
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3594
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMpegNotifyLanguage(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3597
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3602
    throw p1
.end method

.method public setMpegPowerDown()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2988
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2989
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2990
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2991
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMpegPowerDown()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2993
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2994
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2997
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2999
    throw v2
.end method

.method public setMpegPowerUp()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3008
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3009
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3010
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3011
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMpegPowerUp()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3013
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3014
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3019
    throw v2
.end method

.method public setMpegZoom()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2825
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2826
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2827
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2828
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setMpegZoom()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2830
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2831
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2836
    throw v2
.end method

.method public setPBC()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2020
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2021
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2022
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2023
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setPBC()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2025
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2026
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2029
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2031
    throw v2
.end method

.method public setPassWord(BBBB)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3257
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3258
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3259
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3260
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 3261
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByte(B)V

    .line 3262
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3263
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3264
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setPassWord(BBBB)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 3266
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3267
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 3270
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 3270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3272
    throw p1
.end method

.method public setReadDisc(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3609
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3610
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3611
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3612
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3613
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setReadDisc(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3616
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3621
    throw p1
.end method

.method public setRepeatAB()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2928
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2929
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2930
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2931
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setRepeatAB()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2933
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2934
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2937
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2939
    throw v2
.end method

.method public setRomFileToPlay(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3215
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3217
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3218
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3219
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3220
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3221
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setRomFileToPlay(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3224
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3229
    throw p1
.end method

.method public setRootMenu()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2868
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2869
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2870
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2871
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setRootMenu()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2873
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2874
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2879
    throw v2
.end method

.method public setTrayEjectTime_32(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3743
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3744
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3745
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3746
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3747
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setTrayEjectTime_32(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3750
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3755
    throw p1
.end method

.method public setTrayEnterTime_32(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3724
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3726
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3727
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3728
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setTrayEnterTime_32(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3731
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3736
    throw p1
.end method

.method public setTrayTime32([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3628
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3629
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3630
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3631
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3632
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->setTrayTime32([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3635
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3640
    throw p1
.end method

.method public shuffle()Z
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2081
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2082
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2083
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2084
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->shuffle()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2086
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2087
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2090
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2092
    throw v2
.end method

.method public sndMpegPowerOffStatus_32(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 4074
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4075
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4076
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4077
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4078
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->sndMpegPowerOffStatus_32(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4081
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4086
    throw p1
.end method

.method public startDiscLoader32(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3705
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3706
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3707
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3708
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3709
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->startDiscLoader32(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3712
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3717
    throw p1
.end method

.method public stop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 1748
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1749
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1750
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1751
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1754
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1759
    throw v2
.end method

.method public subTitle()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2000
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2001
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2002
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2003
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->subTitle()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2005
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2006
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2009
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2011
    throw v2
.end method

.method public title()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2244
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2245
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2246
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2247
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->title()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2249
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2250
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2253
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2255
    throw v2
.end method

.method public tsPosition(III)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 2201
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2203
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2204
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2205
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2206
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2207
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->tsPosition(III)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2209
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2210
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2213
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2215
    throw p1
.end method

.method public unregisterBackCameraChangeCallBack()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 4153
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4154
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4155
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4156
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->unregisterBackCameraChangeCallBack()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4158
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 4162
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 4162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4164
    throw v2
.end method

.method public unregisterCallBack()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3302
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3303
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3304
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3305
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->unregisterCallBack()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3307
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3308
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 3311
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3313
    throw v2
.end method

.method public unregisterRealCallBack()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IMpegPlayerInterface"

    .line 3343
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3344
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3345
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3346
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IMpegPlayerInterface;->unregisterRealCallBack()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3348
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3349
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 3352
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 3352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3354
    throw v2
.end method
