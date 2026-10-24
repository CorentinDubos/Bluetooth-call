.class Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INowPlayingInfoListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    return-object v0
.end method

.method public nowPlayingAlbum(Ljava/lang/String;)V
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
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 566
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 568
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 569
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 570
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingAlbum(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 573
    :cond_0
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

.method public nowPlayingAlbumDiscCount(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 642
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 645
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 646
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingAlbumDiscCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 649
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 654
    throw p1
.end method

.method public nowPlayingAlbumDiscNum(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 623
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 626
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 627
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingAlbumDiscNum(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 630
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 635
    throw p1
.end method

.method public nowPlayingAlbumTrackCount(I)V
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
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 604
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 607
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 608
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingAlbumTrackCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 611
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 616
    throw p1
.end method

.method public nowPlayingAlbumTrackNum(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 585
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 588
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 589
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingAlbumTrackNum(I)V
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

.method public nowPlayingAppName(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 967
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 969
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 970
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 971
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingAppName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 974
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 979
    throw p1
.end method

.method public nowPlayingArtist(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 661
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 664
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 665
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingArtist(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 668
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    throw p1
.end method

.method public nowPlayingArtwork([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 1157
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1159
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1160
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1161
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingArtwork([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1164
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1169
    throw p1
.end method

.method public nowPlayingArtworkFileTransferId(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 794
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 796
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 797
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 798
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingArtworkFileTransferId(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 801
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 806
    throw p1
.end method

.method public nowPlayingChapterCount(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 813
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 816
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 817
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingChapterCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 820
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 825
    throw p1
.end method

.method public nowPlayingComposer(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 699
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 702
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 703
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingComposer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 706
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 711
    throw p1
.end method

.method public nowPlayingElapsedTimeMs(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 853
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 855
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 856
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 857
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingElapsedTimeMs(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 860
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 865
    throw p1
.end method

.method public nowPlayingGenre(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 680
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 682
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 683
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 684
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingGenre(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 687
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 692
    throw p1
.end method

.method public nowPlayingIsBanSupported(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 737
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 738
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 740
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 741
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingIsBanSupported(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 744
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 749
    throw p1
.end method

.method public nowPlayingIsBanned(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 775
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 776
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 778
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 779
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingIsBanned(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 782
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 787
    throw p1
.end method

.method public nowPlayingIsLikeSupported(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 718
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 719
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 721
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 722
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingIsLikeSupported(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 725
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 730
    throw p1
.end method

.method public nowPlayingIsLiked(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 756
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 757
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 759
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 760
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingIsLiked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 763
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 768
    throw p1
.end method

.method public nowPlayingMediaLibUniqueId(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 986
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 988
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 989
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 990
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingMediaLibUniqueId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 993
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 998
    throw p1
.end method

.method public nowPlayingPersistentId(Ljava/lang/String;)V
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
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 509
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 513
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingPersistentId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 516
    :cond_0
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

.method public nowPlayingPlayStatus(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 834
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 836
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 837
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 838
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingPlayStatus(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 841
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    throw p1
.end method

.method public nowPlayingPlaybackAppBundleID(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 1138
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1140
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1141
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1142
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingPlaybackAppBundleID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1145
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1150
    throw p1
.end method

.method public nowPlayingPlaybackDurationMs(J)V
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
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 547
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 549
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 551
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingPlaybackDurationMs(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 554
    :cond_0
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

.method public nowPlayingPlaybackQueueListAvailable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 1100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1101
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1103
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1104
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingPlaybackQueueListAvailable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1107
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1112
    throw p1
.end method

.method public nowPlayingPlaybackQueueListTransferID(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 1119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1121
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1122
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1123
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingPlaybackQueueListTransferID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1126
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1131
    throw p1
.end method

.method public nowPlayingPlaybackSpeed(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 1062
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1065
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1066
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingPlaybackSpeed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1069
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1074
    throw p1
.end method

.method public nowPlayingQueueChapterIndex(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 910
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 912
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 913
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 914
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingQueueChapterIndex(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 917
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    throw p1
.end method

.method public nowPlayingQueueCount(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 891
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 893
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 894
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 895
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingQueueCount(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 898
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 903
    throw p1
.end method

.method public nowPlayingQueueIndex(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 872
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 874
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 875
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 876
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingQueueIndex(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 879
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 884
    throw p1
.end method

.method public nowPlayingRepeatMode(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 948
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 950
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 951
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 952
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingRepeatMode(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 955
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 960
    throw p1
.end method

.method public nowPlayingSetElapsedTimeAvailable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 1081
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1082
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1083
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1084
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1085
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingSetElapsedTimeAvailable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1088
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1091
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1091
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1093
    throw p1
.end method

.method public nowPlayingShuffleMode(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 929
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 931
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 932
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 933
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingShuffleMode(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 936
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 941
    throw p1
.end method

.method public nowPlayingTitle(Ljava/lang/String;)V
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
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 528
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 532
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingTitle(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 535
    :cond_0
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

.method public nowPlayingiTunesRadioAd(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 1005
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1006
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1008
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1009
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingiTunesRadioAd(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1012
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1017
    throw p1
.end method

.method public nowPlayingiTunesRadioPlayListId(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 1043
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1045
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1046
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1047
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingiTunesRadioPlayListId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1050
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1055
    throw p1
.end method

.method public nowPlayingiTunesRadioStationName(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 1024
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1026
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1027
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1028
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;->nowPlayingiTunesRadioStationName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1031
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1036
    throw p1
.end method
