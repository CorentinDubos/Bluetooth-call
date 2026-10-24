.class Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICanbusInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public actionControl(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1704
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1706
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1707
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1708
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->actionControl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1711
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1716
    throw p1
.end method

.method public amplifierInfoChange(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1386
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1389
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1390
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1391
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->amplifierInfoChange(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1394
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1399
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public atvDestroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1366
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1367
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1368
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1369
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->atvDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1372
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1377
    throw v2
.end method

.method public atvInfoChange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1348
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1349
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1350
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1351
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->atvInfoChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1354
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1359
    throw v2
.end method

.method public auxInDestroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1328
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1329
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1330
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1331
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->auxInDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1334
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1339
    throw v2
.end method

.method public auxInInfoChange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1310
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1311
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1312
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1313
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->auxInInfoChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1316
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1321
    throw v2
.end method

.method public btMusicId3InfoChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1626
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1628
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1630
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1631
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1632
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btMusicId3InfoChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1635
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1640
    throw p1
.end method

.method public btMusicInfoChange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1272
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1273
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1274
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1275
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btMusicInfoChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1278
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1283
    throw v2
.end method

.method public btMusiceDestroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1290
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1291
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1292
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1293
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btMusiceDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1296
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1301
    throw v2
.end method

.method public btPhoneCallLogInfoChange(IILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1249
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1253
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1254
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1255
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btPhoneCallLogInfoChange(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1258
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1263
    throw p1
.end method

.method public btPhoneHangUpInfoChange([BZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1173
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1175
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1176
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1178
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1179
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btPhoneHangUpInfoChange([BZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1182
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1187
    throw p1
.end method

.method public btPhoneIncomingInfoChange([BZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1110
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1112
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1113
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1115
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1116
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btPhoneIncomingInfoChange([BZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1119
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1124
    throw p1
.end method

.method public btPhoneOutGoingInfoChange([BZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1131
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1133
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1134
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1136
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1137
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btPhoneOutGoingInfoChange([BZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1140
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    throw p1
.end method

.method public btPhoneStatusInfoChange(I[BZZZZIILandroid/os/Bundle;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p9

    .line 1191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 1192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    :try_start_0
    const-string v1, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1194
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v2, p1

    .line 1195
    invoke-virtual {v11, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v3, p2

    .line 1196
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 1197
    :goto_0
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 1198
    :goto_1
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v4

    .line 1199
    :goto_2
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v4

    .line 1200
    :goto_3
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p7

    .line 1201
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p8

    .line 1202
    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_4

    .line 1204
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    invoke-virtual {v0, v11, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 1208
    :cond_4
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_4
    move-object v13, p0

    .line 1210
    :try_start_1
    iget-object v1, v13, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x10

    invoke-interface {v1, v5, v11, v12, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1211
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1212
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v1

    move v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btPhoneStatusInfoChange(I[BZZZZIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 1219
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1215
    :cond_5
    :try_start_2
    invoke-virtual {v12}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1218
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 1219
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v13, p0

    .line 1218
    :goto_5
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 1219
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 1220
    throw v0
.end method

.method public btPhoneTalkingInfoChange([BZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1152
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1154
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1155
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1157
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1158
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btPhoneTalkingInfoChange([BZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1161
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1166
    throw p1
.end method

.method public btPhoneTalkingWithTimeInfoChange([BZZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1227
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1229
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1230
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1233
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1234
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btPhoneTalkingWithTimeInfoChange([BZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1237
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1242
    throw p1
.end method

.method public cameraDestroy()V
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
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1667
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1668
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1669
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1670
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->cameraDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1673
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1678
    throw v2
.end method

.method public cameraInfoChange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1649
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1650
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1651
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1652
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->cameraInfoChange()V
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
    move-exception v2

    .line 1658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1660
    throw v2
.end method

.method public canbusInfoChange([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 824
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 826
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 827
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 828
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->canbusInfoChange([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 831
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 836
    throw p1
.end method

.method public currentVolumeInfoChange(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1088
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1090
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1092
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1093
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->currentVolumeInfoChange(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1096
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1101
    throw p1
.end method

.method public deviceStatusInfoChange(IIIIIIIIIIII)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1056
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move/from16 v0, p1

    .line 1057
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v5, p2

    .line 1058
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v6, p3

    .line 1059
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p4

    .line 1060
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 1061
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p6

    .line 1062
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p7

    .line 1063
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v11, p8

    .line 1064
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v12, p9

    .line 1065
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v13, p10

    .line 1066
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v14, p11

    .line 1067
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v15, p12

    .line 1068
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v4, p0

    .line 1069
    iget-object v3, v4, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v0, 0xa

    const/4 v4, 0x0

    invoke-interface {v3, v0, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-interface/range {v3 .. v15}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->deviceStatusInfoChange(IIIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1074
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    .line 1077
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1079
    throw v0
.end method

.method public discInfoChange(BIIIIIIZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1023
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move/from16 v0, p1

    .line 1024
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v5, p2

    .line 1025
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v6, p3

    .line 1026
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p4

    .line 1027
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 1028
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p6

    .line 1029
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p7

    .line 1030
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p8, :cond_0

    move v11, v3

    goto :goto_0

    :cond_0
    move v11, v4

    .line 1031
    :goto_0
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p9, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 1032
    :goto_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v13, p10

    .line 1033
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v14, p11

    .line 1034
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v15, p12

    .line 1035
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v12, p13

    .line 1036
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v11, p0

    .line 1037
    iget-object v3, v11, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v0, 0x9

    invoke-interface {v3, v0, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1038
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1039
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    invoke-interface/range {v3 .. v16}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->discInfoChange(BIIIIIIZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1042
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1045
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    .line 1045
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    throw v0
.end method

.method public dtvInfoChange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1003
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1004
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1005
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1006
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->dtvInfoChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1009
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1014
    throw v2
.end method

.method public getAirInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1768
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1769
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1770
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1771
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->getAirInfo()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1773
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1774
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1779
    throw v2
.end method

.method public getAirPageUiSet()Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1743
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1744
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1745
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1746
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->getAirPageUiSet()Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1748
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1749
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1750
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1757
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1759
    throw v2
.end method

.method public getCanTypeAllEntity(I)Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1504
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1507
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1508
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->getCanTypeAllEntity(I)Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1510
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1512
    sget-object p1, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/midwareproxy/binder/service/CanTypeAllEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1519
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1521
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    return-object v0
.end method

.method public musicDestroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 983
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 984
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 985
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 986
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->musicDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 989
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 994
    throw v2
.end method

.method public musicInfoChange(BBIIBBBBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JBIZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 943
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move/from16 v0, p1

    .line 944
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v5, p2

    .line 945
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v6, p3

    .line 946
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p4

    .line 947
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 948
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v9, p6

    .line 949
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v10, p7

    .line 950
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v11, p8

    .line 951
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v12, p9

    .line 952
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v13, p10

    .line 953
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeByte(B)V

    move-object/from16 v14, p11

    .line 954
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v15, p12

    .line 955
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v4, p13

    .line 956
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v14, p14

    .line 957
    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v3, p16

    .line 958
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v0, p17

    .line 959
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    if-eqz p18, :cond_0

    move/from16 v0, v16

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 960
    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v14, p19

    .line 961
    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p21

    .line 962
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p22

    .line 963
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p23

    .line 964
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p24, :cond_1

    move/from16 v0, v16

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 965
    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v15, p0

    .line 966
    iget-object v0, v15, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v14, 0x6

    const/4 v3, 0x0

    invoke-interface {v0, v14, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 967
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 968
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-wide/from16 v17, p14

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move-wide/from16 v22, p19

    move-object/from16 v24, p21

    move-object/from16 v25, p22

    move-object/from16 v26, p23

    move/from16 v27, p24

    invoke-interface/range {v3 .. v27}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->musicInfoChange(BBIIBBBBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JBIZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 971
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 974
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    .line 974
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 976
    throw v0
.end method

.method public musicLrcInfoChange(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1607
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1609
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1610
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1611
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->musicLrcInfoChange(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1614
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1619
    throw p1
.end method

.method public onAccStatusChange(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1787
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1788
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1789
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1790
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1791
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->onAccStatusChange(I)V
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

.method public parkDestroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1568
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1569
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1570
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1571
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->parkDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1574
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1579
    throw v2
.end method

.method public parkInfoChange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1550
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1551
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1552
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1553
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->parkInfoChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1556
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1561
    throw v2
.end method

.method public radioDestroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 868
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 869
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 870
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 871
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->radioDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 874
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 879
    throw v2
.end method

.method public radioInfoChange(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 845
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 852
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 853
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->radioInfoChange(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 856
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    throw p1
.end method

.method public registerCanbusInfoChangeCallBack(Laidl/ICanbusInfoChangeCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1723
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1724
    invoke-interface {p1}, Laidl/ICanbusInfoChangeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1725
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1726
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1727
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->registerCanbusInfoChangeCallBack(Laidl/ICanbusInfoChangeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1730
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1735
    throw p1
.end method

.method public reportCanTypeId(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1529
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1532
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1533
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->reportCanTypeId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1536
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1541
    throw p1
.end method

.method public saveCanTypeId(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1586
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1589
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1590
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->saveCanTypeId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1593
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1598
    throw p1
.end method

.method public sourceSwitchChange(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1685
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1687
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1688
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1689
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->sourceSwitchChange(Ljava/lang/String;)V
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

.method public sourceSwitchDestroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1485
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1486
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1487
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1488
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->sourceSwitchDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1491
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1496
    throw v2
.end method

.method public sourceSwitchExitSrcAuxIn2InfoChange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1429
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1430
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1431
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1432
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->sourceSwitchExitSrcAuxIn2InfoChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1435
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1440
    throw v2
.end method

.method public sourceSwitchInitInfoChange(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1466
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1469
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1470
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->sourceSwitchInitInfoChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1473
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1478
    throw p1
.end method

.method public sourceSwitchMpuMediaInfoChange(BBB)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1408
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1410
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1411
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 1412
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1413
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1414
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->sourceSwitchMpuMediaInfoChange(BBB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1417
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1422
    throw p1
.end method

.method public sourceSwitchNoMediaInfoChange(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 1447
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1448
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1449
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1450
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1451
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->sourceSwitchNoMediaInfoChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1454
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1459
    throw p1
.end method

.method public videoDestroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 923
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 924
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 925
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 926
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->videoDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 929
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 934
    throw v2
.end method

.method public videoInfoChange(BBIIBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBZI)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.ICanbusInterface"

    .line 888
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move/from16 v0, p1

    .line 889
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v5, p2

    .line 890
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v6, p3

    .line 891
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p4

    .line 892
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 893
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v9, p6

    .line 894
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v10, p7

    .line 895
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeByte(B)V

    move-object/from16 v11, p8

    .line 896
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v12, p9

    .line 897
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v13, p10

    .line 898
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeByte(B)V

    move-object/from16 v14, p11

    .line 899
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v15, p12

    .line 900
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v4, p13

    .line 901
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v3, p14

    .line 902
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 903
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    if-eqz p16, :cond_0

    const/16 v16, 0x1

    move/from16 v0, v16

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 904
    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 905
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v15, p0

    .line 906
    iget-object v0, v15, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 907
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 908
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    invoke-interface/range {v3 .. v20}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->videoInfoChange(BBIIBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 911
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    .line 914
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 916
    throw v0
.end method
