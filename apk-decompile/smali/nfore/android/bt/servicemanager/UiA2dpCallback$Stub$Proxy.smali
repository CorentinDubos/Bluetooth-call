.class Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "UiA2dpCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/UiA2dpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lnfore/android/bt/servicemanager/UiA2dpCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1320
    iput-object p1, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1324
    iget-object v0, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "nfore.android.bt.servicemanager.UiA2dpCallback"

    return-object v0
.end method

.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1356
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1361
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1362
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onA2dpStateChanged(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1365
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1370
    throw p1
.end method

.method public onAvrcpBrowsingStateChanged(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1442
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1445
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1446
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1447
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1448
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpBrowsingStateChanged(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1451
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1456
    throw p1
.end method

.method public onAvrcpErrorResponse(Ljava/lang/String;IIB)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2752
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2754
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2755
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2756
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByte(B)V

    .line 2757
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2758
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2759
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpErrorResponse(Ljava/lang/String;IIB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2762
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2767
    throw p1
.end method

.method public onAvrcpEventAddressedPlayerChanged(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2282
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2284
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2285
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2286
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2287
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2288
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventAddressedPlayerChanged(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2291
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2296
    throw p1
.end method

.method public onAvrcpEventAvailablePlayerChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2248
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2250
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2251
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2252
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventAvailablePlayerChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2255
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2260
    throw p1
.end method

.method public onAvrcpEventBatteryStatusChanged(Ljava/lang/String;B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1908
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1911
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1912
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1913
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventBatteryStatusChanged(Ljava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1916
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1921
    throw p1
.end method

.method public onAvrcpEventNowPlayingContentChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2219
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2221
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2222
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2223
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventNowPlayingContentChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2226
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2231
    throw p1
.end method

.method public onAvrcpEventPlaybackPosChanged(Ljava/lang/String;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1874
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1877
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1878
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1879
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventPlaybackPosChanged(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1882
    :cond_0
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

.method public onAvrcpEventPlaybackStatusChanged(Ljava/lang/String;B)V
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
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1757
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1760
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1761
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1762
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventPlaybackStatusChanged(Ljava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1765
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1770
    throw p1
.end method

.method public onAvrcpEventPlayerSettingChanged(Ljava/lang/String;[B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1990
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1992
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1993
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1994
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1995
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1996
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventPlayerSettingChanged(Ljava/lang/String;[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2002
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1999
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2002
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2002
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2004
    throw p1
.end method

.method public onAvrcpEventSystemStatusChanged(Ljava/lang/String;B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1940
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1942
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1943
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1944
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1945
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventSystemStatusChanged(Ljava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1948
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1953
    throw p1
.end method

.method public onAvrcpEventTrackChanged(Ljava/lang/String;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1786
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1788
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1789
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1790
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1791
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventTrackChanged(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1794
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1799
    throw p1
.end method

.method public onAvrcpEventTrackReachedEnd(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1814
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1816
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1817
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1818
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventTrackReachedEnd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1821
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1826
    throw p1
.end method

.method public onAvrcpEventTrackReachedStart(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1841
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1843
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1844
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1845
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventTrackReachedStart(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1848
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1853
    throw p1
.end method

.method public onAvrcpEventUidsChanged(Ljava/lang/String;I)V
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
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2360
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2362
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2363
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2364
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2365
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventUidsChanged(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2368
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2373
    throw p1
.end method

.method public onAvrcpEventVolumeChanged(Ljava/lang/String;B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2394
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2397
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2398
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2399
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventVolumeChanged(Ljava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2402
    :cond_0
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

.method public onAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1401
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1406
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1407
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpStateChanged(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1410
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1415
    throw p1
.end method

.method public retAvrcpAbsoluteVolumeSet(Ljava/lang/String;B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2675
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2677
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2678
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2679
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2680
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpAbsoluteVolumeSet(Ljava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2683
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2688
    throw p1
.end method

.method public retAvrcpAddressedPlayerSet(Ljava/lang/String;)V
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
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2423
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2425
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2426
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2427
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpAddressedPlayerSet(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2430
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2435
    throw p1
.end method

.method public retAvrcpBatteryStatusOfCtInformed(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2187
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2189
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2190
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2191
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpBatteryStatusOfCtInformed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2194
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2199
    throw p1
.end method

.method public retAvrcpBrowsedPlayerSet(Ljava/lang/String;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2453
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2455
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2456
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 2457
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2458
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2459
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpBrowsedPlayerSet(Ljava/lang/String;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2462
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2467
    throw p1
.end method

.method public retAvrcpCapabilitiesSupportEvent(Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1486
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1489
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1490
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1491
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpCapabilitiesSupportEvent(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1494
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1499
    throw p1
.end method

.method public retAvrcpDisplayableCharsetInformed(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2159
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2161
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2162
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2163
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpDisplayableCharsetInformed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2166
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2171
    throw p1
.end method

.method public retAvrcpElementAttributesPlaying(Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1683
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1686
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1687
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1688
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1689
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpElementAttributesPlaying(Ljava/lang/String;[I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1692
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1697
    throw p1
.end method

.method public retAvrcpFolderItems(Ljava/lang/String;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2489
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2492
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 2493
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2494
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2495
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpFolderItems(Ljava/lang/String;IJ)V
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

.method public retAvrcpItemAttributes(Ljava/lang/String;[I[Ljava/lang/String;)V
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
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2556
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2558
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2559
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2560
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2561
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2562
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpItemAttributes(Ljava/lang/String;[I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2565
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2570
    throw p1
.end method

.method public retAvrcpMetadataReceivingAborted(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2037
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2040
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2041
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2042
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpMetadataReceivingAborted(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2045
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2048
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2050
    throw p1
.end method

.method public retAvrcpNowPlayingAdded(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2646
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2647
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2648
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2649
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2650
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpNowPlayingAdded(Ljava/lang/String;)V
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

.method public retAvrcpPathChanged(Ljava/lang/String;J)V
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
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2520
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2522
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2523
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2524
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2525
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPathChanged(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2528
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2533
    throw p1
.end method

.method public retAvrcpPlayStatus(Ljava/lang/String;JJB)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1720
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 1721
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide v5, p2

    .line 1722
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v7, p4

    .line 1723
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v9, p6

    .line 1724
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, p0

    .line 1725
    :try_start_1
    iget-object v3, v10, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1726
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1727
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayStatus(Ljava/lang/String;JJB)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1733
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1730
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1733
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v10, p0

    .line 1733
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1735
    throw v0
.end method

.method public retAvrcpPlayerSettingAttributeText(Ljava/lang/String;IB[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2075
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2078
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 2079
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2080
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2081
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2082
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayerSettingAttributeText(Ljava/lang/String;IB[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2085
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2090
    throw p1
.end method

.method public retAvrcpPlayerSettingAttributesList(Ljava/lang/String;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1518
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1521
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1522
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1523
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayerSettingAttributesList(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1526
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1531
    throw p1
.end method

.method public retAvrcpPlayerSettingCurrentValues(Ljava/lang/String;[B[B)V
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
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1618
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1621
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1622
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1623
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1624
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayerSettingCurrentValues(Ljava/lang/String;[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1627
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1632
    throw p1
.end method

.method public retAvrcpPlayerSettingValueSet(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1648
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1650
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1651
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1652
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayerSettingValueSet(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1655
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1660
    throw p1
.end method

.method public retAvrcpPlayerSettingValueText(Ljava/lang/String;IB[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2127
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2130
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 2131
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2132
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2133
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2134
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayerSettingValueText(Ljava/lang/String;IB[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2137
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2142
    throw p1
.end method

.method public retAvrcpPlayerSettingValuesList(Ljava/lang/String;B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 1567
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1570
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1571
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1572
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1573
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayerSettingValuesList(Ljava/lang/String;B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1576
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1581
    throw p1
.end method

.method public retAvrcpSearchResult(Ljava/lang/String;IJ)V
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
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2616
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2618
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2619
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 2620
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2621
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2622
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpSearchResult(Ljava/lang/String;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2625
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2630
    throw p1
.end method

.method public retAvrcpSelectedItemPlayed(Ljava/lang/String;)V
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
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2586
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2588
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2589
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2590
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpSelectedItemPlayed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2593
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2598
    throw p1
.end method

.method public retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 2779
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2780
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2781
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2782
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2783
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2784
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2785
    invoke-static {}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2788
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2793
    throw p1
.end method
