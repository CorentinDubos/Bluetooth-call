.class Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISourceSwitchManager.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public audioChannelRelease(IILandroid/os/Bundle;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 365
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 369
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    :goto_0
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 376
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 377
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->audioChannelRelease(IILandroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 379
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 380
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 383
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 385
    throw p1
.end method

.method public audioChannelRequest(IILandroid/os/Bundle;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 336
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 340
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    :goto_0
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 347
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 348
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->audioChannelRequest(IILandroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 350
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 354
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 356
    throw p1
.end method

.method public canAudioChannelRequest(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 314
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 319
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->canAudioChannelRequest(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 321
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 325
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    throw p1
.end method

.method public detectParkPanoramic(ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 293
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 294
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 297
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 298
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->detectParkPanoramic(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 301
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    throw p1
.end method

.method public getCurrentFrontSource(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 533
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 537
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->getCurrentFrontSource(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 539
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 540
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 545
    throw p1
.end method

.method public getCurrentValidSource(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 452
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 456
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->getCurrentValidSource(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 458
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 464
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    return-object v0
.end method

.method public openRightVisualCamera(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 553
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 554
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 556
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 557
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->openRightVisualCamera(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 560
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 565
    throw p1
.end method

.method public pauseorresumeothercvbs(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 573
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 574
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xd

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 576
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 577
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->pauseorresumeothercvbs(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 579
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 580
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 583
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    throw p1
.end method

.method public releaseVideoChannel(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 494
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 498
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->releaseVideoChannel(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 500
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 504
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 506
    throw p1
.end method

.method public requestVideoChannel(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 473
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 476
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 477
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->requestVideoChannel(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 479
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 483
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 485
    throw p1
.end method

.method public switchToNextSource()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 514
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 516
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 517
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->switchToNextSource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 520
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 525
    throw v2
.end method

.method public videoChannelRelease(IILandroid/os/Bundle;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 423
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 427
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    :goto_0
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 434
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 435
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->videoChannelRelease(IILandroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 437
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 441
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 443
    throw p1
.end method

.method public videoChannelRequest(IILandroid/os/Bundle;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 394
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 398
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    :goto_0
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 405
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 406
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;->videoChannelRequest(IILandroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 408
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 412
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 414
    throw p1
.end method
