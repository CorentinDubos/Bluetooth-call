.class Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioInfoChangeListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public dabDlsInfor(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 634
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 636
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 637
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 638
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->dabDlsInfor(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 641
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 646
    throw p1
.end method

.method public dabKbitInfor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 653
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 656
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 657
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->dabKbitInfor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 660
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 665
    throw p1
.end method

.method public dabServiceIDInfor([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 672
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 674
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 675
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 676
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->dabServiceIDInfor([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 679
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 684
    throw p1
.end method

.method public dabServiceInfor([I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 615
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 617
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 618
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 619
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->dabServiceInfor([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 622
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 627
    throw p1
.end method

.method public dabServiceItemLabel(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 691
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 694
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 695
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 696
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->dabServiceItemLabel(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 699
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 704
    throw p1
.end method

.method public dabServiceLabel([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 596
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 598
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 599
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 600
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->dabServiceLabel([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 603
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 606
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 608
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    return-object v0
.end method

.method public radioAutoSearchStatusChanged(Z)V
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
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 403
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 404
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 406
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 407
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioAutoSearchStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 410
    :cond_1
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

.method public radioAutoSearchWithPreviewStatusChanged(Z)V
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
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 422
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 423
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 425
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 426
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioAutoSearchWithPreviewStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 429
    :cond_1
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

.method public radioBandTypeChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 384
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 388
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioBandTypeChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 391
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    throw p1
.end method

.method public radioChannelTypeChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 327
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 331
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioChannelTypeChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 334
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    throw p1
.end method

.method public radioForceMonoChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 575
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 578
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 579
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioForceMonoChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 582
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 587
    throw p1
.end method

.method public radioFreqChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 365
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 369
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioFreqChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 372
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    throw p1
.end method

.method public radioLocalChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 556
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 559
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 560
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioLocalChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 563
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    throw p1
.end method

.method public radioPresetFreqListChanged([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 479
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 483
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioPresetFreqListChanged([Ljava/lang/String;)V
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

.method public radioPresetFreqPSListChanged([Ljava/lang/String;)V
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
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 498
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 500
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 501
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 502
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioPresetFreqPSListChanged([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 505
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 510
    throw p1
.end method

.method public radioPresetFreqPSNameChanged(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 517
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 522
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioPresetFreqPSNameChanged(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 525
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 530
    throw p1
.end method

.method public radioSignalStrengthChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 346
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 350
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioSignalStrengthChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 353
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 358
    throw p1
.end method

.method public radioStepDownStatusChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 460
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 461
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 463
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 464
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioStepDownStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 467
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 472
    throw p1
.end method

.method public radioStepUpStatusChanged(Z)V
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
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 441
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 442
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 444
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 445
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioStepUpStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 448
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    throw p1
.end method

.method public radioStereoChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.radio.aidl.IRadioInfoChangeListener"

    .line 537
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 541
    invoke-static {}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener;->radioStereoChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 544
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 549
    throw p1
.end method
