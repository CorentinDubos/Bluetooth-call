.class Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRDSInfoChangeListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public AFLevelChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 376
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 380
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->AFLevelChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 383
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw p1
.end method

.method public AFSeekChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 395
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 396
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 398
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 399
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->AFSeekChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 402
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    throw p1
.end method

.method public AFStatusChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 414
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 415
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 417
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 418
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->AFStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 421
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    throw p1
.end method

.method public CurrentStationStatusChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 608
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 609
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 611
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 612
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->CurrentStationStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 615
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 620
    throw p1
.end method

.method public EONStatusChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 547
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 548
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 550
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 551
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->EONStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 554
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 559
    throw p1
.end method

.method public EWSArrivedChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 650
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 651
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 653
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 654
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->EWSArrivedChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 657
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 662
    throw p1
.end method

.method public EWSStatusChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 528
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 529
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 531
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 532
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->EWSStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 535
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    throw p1
.end method

.method public PSInfoChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 319
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 323
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->PSInfoChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 326
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 331
    throw p1
.end method

.method public PSStatusChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 629
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 630
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 632
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 633
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->PSStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 636
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 641
    throw p1
.end method

.method public PTYInfoChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 338
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 342
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->PTYInfoChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 345
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 350
    throw p1
.end method

.method public PTYSeekChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 452
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 453
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 455
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 456
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->PTYSeekChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 459
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 464
    throw p1
.end method

.method public PTYTypeInfoChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 587
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 590
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 591
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->PTYTypeInfoChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 594
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 599
    throw p1
.end method

.method public RTInfoChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 357
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 361
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->RTInfoChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 364
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    throw p1
.end method

.method public RTStatusChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 671
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 672
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 674
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 675
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->RTStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 678
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    throw p1
.end method

.method public RegionStatusChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 490
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 491
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 494
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->RegionStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 497
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 502
    throw p1
.end method

.method public TASeekChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 471
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 472
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 474
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 475
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->TASeekChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 478
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    throw p1
.end method

.method public TAStatusChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 509
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 510
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 512
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 513
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->TAStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 516
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
    throw p1
.end method

.method public TPInfoChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 566
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 567
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 569
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 570
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->TPInfoChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 573
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 578
    throw p1
.end method

.method public TPSeekChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    .line 433
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 434
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 437
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener;->TPSeekChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 440
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.radio.aidl.IRDSInfoChangeListener"

    return-object v0
.end method
