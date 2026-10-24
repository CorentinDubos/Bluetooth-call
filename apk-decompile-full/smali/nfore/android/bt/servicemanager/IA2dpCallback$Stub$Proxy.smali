.class Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IA2dpCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/IA2dpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lnfore/android/bt/servicemanager/IA2dpCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1290
    iput-object p1, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1294
    iget-object v0, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "nfore.android.bt.servicemanager.IA2dpCallback"

    return-object v0
.end method

.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1326
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1331
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1332
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onA2dpStateChanged(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1335
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1340
    throw p1
.end method

.method public onAvrcpBrowsingStateChanged(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1412
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1415
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1417
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1418
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpBrowsingStateChanged(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1421
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1426
    throw p1
.end method

.method public onAvrcpErrorResponse(Ljava/lang/String;IIB)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2722
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2723
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2724
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2725
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2726
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByte(B)V

    .line 2727
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2728
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2729
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpErrorResponse(Ljava/lang/String;IIB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2732
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2737
    throw p1
.end method

.method public onAvrcpEventAddressedPlayerChanged(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2252
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2254
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2255
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2256
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2257
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2258
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventAddressedPlayerChanged(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2261
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2266
    throw p1
.end method

.method public onAvrcpEventAvailablePlayerChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2218
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2219
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2220
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2221
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2222
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventAvailablePlayerChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2225
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2230
    throw p1
.end method

.method public onAvrcpEventBatteryStatusChanged(Ljava/lang/String;B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1878
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1880
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1881
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1882
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1883
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventBatteryStatusChanged(Ljava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1886
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1891
    throw p1
.end method

.method public onAvrcpEventNowPlayingContentChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2189
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2191
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2192
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2193
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventNowPlayingContentChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2196
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2201
    throw p1
.end method

.method public onAvrcpEventPlaybackPosChanged(Ljava/lang/String;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1844
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1847
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1848
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1849
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventPlaybackPosChanged(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1852
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1857
    throw p1
.end method

.method public onAvrcpEventPlaybackStatusChanged(Ljava/lang/String;B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1727
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1728
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1729
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1730
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1731
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1732
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventPlaybackStatusChanged(Ljava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1735
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1740
    throw p1
.end method

.method public onAvrcpEventPlayerSettingChanged(Ljava/lang/String;[B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1960
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1961
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1962
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1963
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1964
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1965
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1966
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventPlayerSettingChanged(Ljava/lang/String;[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1969
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1974
    throw p1
.end method

.method public onAvrcpEventSystemStatusChanged(Ljava/lang/String;B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1910
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1912
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1913
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1914
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1915
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventSystemStatusChanged(Ljava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1918
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1923
    throw p1
.end method

.method public onAvrcpEventTrackChanged(Ljava/lang/String;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1756
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1759
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1760
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1761
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventTrackChanged(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1764
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1769
    throw p1
.end method

.method public onAvrcpEventTrackReachedEnd(Ljava/lang/String;)V
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
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1784
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1786
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1787
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1788
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventTrackReachedEnd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1791
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1796
    throw p1
.end method

.method public onAvrcpEventTrackReachedStart(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1811
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1813
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1814
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1815
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventTrackReachedStart(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1818
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1823
    throw p1
.end method

.method public onAvrcpEventUidsChanged(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2330
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2332
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2333
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2334
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2335
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventUidsChanged(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2338
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2343
    throw p1
.end method

.method public onAvrcpEventVolumeChanged(Ljava/lang/String;B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2364
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2366
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2367
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2368
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2369
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpEventVolumeChanged(Ljava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2372
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2377
    throw p1
.end method

.method public onAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1371
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1376
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1377
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IA2dpCallback;->onAvrcpStateChanged(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1380
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1385
    throw p1
.end method

.method public retAvrcpAbsoluteVolumeSet(Ljava/lang/String;B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2645
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2647
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2648
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2649
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2650
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpAbsoluteVolumeSet(Ljava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2653
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2658
    throw p1
.end method

.method public retAvrcpAddressedPlayerSet(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2393
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2395
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2396
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2397
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpAddressedPlayerSet(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2400
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2405
    throw p1
.end method

.method public retAvrcpBatteryStatusOfCtInformed(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2157
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2159
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2160
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2161
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpBatteryStatusOfCtInformed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2164
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2169
    throw p1
.end method

.method public retAvrcpBrowsedPlayerSet(Ljava/lang/String;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2423
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2426
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 2427
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2428
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2429
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpBrowsedPlayerSet(Ljava/lang/String;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2432
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2437
    throw p1
.end method

.method public retAvrcpCapabilitiesSupportEvent(Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1456
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1458
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1459
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1460
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1461
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpCapabilitiesSupportEvent(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1464
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1469
    throw p1
.end method

.method public retAvrcpDisplayableCharsetInformed(Ljava/lang/String;)V
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
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2129
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2131
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2132
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2133
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpDisplayableCharsetInformed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2136
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2141
    throw p1
.end method

.method public retAvrcpElementAttributesPlaying(Ljava/lang/String;[I[Ljava/lang/String;)V
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
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1653
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1656
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1657
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1658
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1659
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpElementAttributesPlaying(Ljava/lang/String;[I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1662
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1665
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1665
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1667
    throw p1
.end method

.method public retAvrcpFolderItems(Ljava/lang/String;IJ)V
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
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2459
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2461
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2462
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 2463
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2464
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2465
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpFolderItems(Ljava/lang/String;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2468
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2473
    throw p1
.end method

.method public retAvrcpItemAttributes(Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2526
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2527
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2528
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2529
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2530
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2531
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2532
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpItemAttributes(Ljava/lang/String;[I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2535
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
    throw p1
.end method

.method public retAvrcpMetadataReceivingAborted(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2007
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2009
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2011
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2012
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpMetadataReceivingAborted(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2015
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2020
    throw p1
.end method

.method public retAvrcpNowPlayingAdded(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2616
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2618
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2619
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2620
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpNowPlayingAdded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2623
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2628
    throw p1
.end method

.method public retAvrcpPathChanged(Ljava/lang/String;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2490
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2492
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2493
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2494
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2495
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpPathChanged(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2498
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2503
    throw p1
.end method

.method public retAvrcpPlayStatus(Ljava/lang/String;JJB)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1690
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 1691
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide v5, p2

    .line 1692
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v7, p4

    .line 1693
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v9, p6

    .line 1694
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, p0

    .line 1695
    :try_start_1
    iget-object v3, v10, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1696
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1697
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpPlayStatus(Ljava/lang/String;JJB)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1703
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1700
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1703
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v10, p0

    .line 1703
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1705
    throw v0
.end method

.method public retAvrcpPlayerSettingAttributeText(Ljava/lang/String;IB[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2045
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2046
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2047
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2048
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 2049
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2050
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2051
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2052
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpPlayerSettingAttributeText(Ljava/lang/String;IB[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2055
    :cond_0
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

.method public retAvrcpPlayerSettingAttributesList(Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1488
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1491
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1492
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1493
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpPlayerSettingAttributesList(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1496
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1501
    throw p1
.end method

.method public retAvrcpPlayerSettingCurrentValues(Ljava/lang/String;[B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1588
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1590
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1591
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1592
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1593
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1594
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpPlayerSettingCurrentValues(Ljava/lang/String;[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1597
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1602
    throw p1
.end method

.method public retAvrcpPlayerSettingValueSet(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1618
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1620
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1621
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1622
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpPlayerSettingValueSet(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1625
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1630
    throw p1
.end method

.method public retAvrcpPlayerSettingValueText(Ljava/lang/String;IB[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2097
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2098
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2099
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2100
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 2101
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2102
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2103
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2104
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpPlayerSettingValueText(Ljava/lang/String;IB[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2107
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2112
    throw p1
.end method

.method public retAvrcpPlayerSettingValuesList(Ljava/lang/String;B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 1537
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1540
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1541
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1542
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1543
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpPlayerSettingValuesList(Ljava/lang/String;B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1546
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1551
    throw p1
.end method

.method public retAvrcpSearchResult(Ljava/lang/String;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2586
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2588
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2589
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 2590
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2591
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2592
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpSearchResult(Ljava/lang/String;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2595
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2600
    throw p1
.end method

.method public retAvrcpSelectedItemPlayed(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 2556
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2558
    iget-object v2, p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2559
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2560
    invoke-static {}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback;->retAvrcpSelectedItemPlayed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2563
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2568
    throw p1
.end method
