.class Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMpegPlayerCallBackInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public discEjected(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 403
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 407
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->discEjected(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 410
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    throw p1
.end method

.method public discQueryEnd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 441
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 444
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->discQueryEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 447
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    throw v2
.end method

.method public discQueryStart(I)V
    .locals 5
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
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 422
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 426
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->discQueryStart(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 429
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    return-object v0
.end method

.method public onDisplayInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 698
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 699
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, p2

    .line 700
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v6, p3

    .line 701
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v7, p4

    .line 702
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v8, p5

    .line 703
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v9, p6

    .line 704
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, p0

    .line 705
    :try_start_1
    iget-object v3, v10, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 706
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 707
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onDisplayInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 713
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 710
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 713
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v10, p0

    .line 713
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    throw v0
.end method

.method public onID3Update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 625
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 631
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onID3Update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 634
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 639
    throw p1
.end method

.method public onMcuDeviceChange(ZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 816
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 817
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 818
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 819
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 821
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 822
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onMcuDeviceChange(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 825
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    throw p1
.end method

.method public onMpegInfos(IIIIIZIZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 646
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 647
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v5, p2

    .line 648
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v6, p3

    .line 649
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p4

    .line 650
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 651
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p6, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v4

    .line 652
    :goto_0
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p7

    .line 653
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p8, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 654
    :goto_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, p0

    .line 655
    :try_start_1
    iget-object v3, v12, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v9, 0xd

    invoke-interface {v3, v9, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 656
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 657
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v3

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onMpegInfos(IIIIIZIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 660
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 663
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v12, p0

    .line 663
    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 665
    throw v0
.end method

.method public onMpegPassWordRSP(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 759
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 762
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 763
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onMpegPassWordRSP(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 766
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 771
    throw p1
.end method

.method public onMpegPrint(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 722
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 725
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 726
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onMpegPrint(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 729
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 734
    throw p1
.end method

.method public onMpegUpgradeInd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 741
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 743
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 744
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onMpegUpgradeInd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 747
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 752
    throw v2
.end method

.method public onOtherKeyEvent(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 797
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 799
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 800
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 801
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onOtherKeyEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 804
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 809
    throw p1
.end method

.method public onPlayInfoUpdate(IIIIIIII)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 672
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 673
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v5, p2

    .line 674
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v6, p3

    .line 675
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p4

    .line 676
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 677
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p6

    .line 678
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p7

    .line 679
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v11, p8

    .line 680
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, p0

    .line 681
    :try_start_1
    iget-object v3, v12, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v13, 0x0

    invoke-interface {v3, v4, v1, v2, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 682
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 683
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v3

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onPlayInfoUpdate(IIIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 686
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 689
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v12, p0

    .line 689
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    throw v0
.end method

.method public onPlayingStatusUpdate(IIIII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 581
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 588
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 589
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onPlayingStatusUpdate(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 592
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 597
    throw p1
.end method

.method public onPlayingTimeUpdate(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 478
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 483
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onPlayingTimeUpdate(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 486
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 491
    throw p1
.end method

.method public onRemoteDirect(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 778
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 781
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 782
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onRemoteDirect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 785
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    throw p1
.end method

.method public onReportDeviceStatus(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 561
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 566
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onReportDeviceStatus(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 569
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 574
    throw p1
.end method

.method public onScreenStatus(ZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 604
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 605
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 606
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 607
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 609
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 610
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->onScreenStatus(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 613
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 618
    throw p1
.end method

.method public playCDTrackUpdate(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 498
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 503
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->playCDTrackUpdate(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 506
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 511
    throw p1
.end method

.method public playDVDRootMenuUpdate(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 459
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 460
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 463
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->playDVDRootMenuUpdate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 466
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    throw p1
.end method

.method public playDVDTitleChapterUpdate(IIII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 518
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 525
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->playDVDTitleChapterUpdate(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 528
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    throw p1
.end method

.method public playROMFileUpdate(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 540
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 546
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;->playROMFileUpdate(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 549
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    throw p1
.end method
