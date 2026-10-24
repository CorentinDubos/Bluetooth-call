.class Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "UiServiceCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/UiServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lnfore/android/bt/servicemanager/UiServiceCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-object p1, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 567
    iget-object v0, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "nfore.android.bt.servicemanager.UiServiceCallback"

    return-object v0
.end method

.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 956
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 961
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 962
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onA2dpStateChanged(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 965
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    throw p1
.end method

.method public onAdapterStateChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 630
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 633
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 634
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onAdapterStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 637
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 642
    throw p1
.end method

.method public onAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 1059
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1064
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1065
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onAvrcpStateChanged(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1068
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1071
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1073
    throw p1
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;BZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 772
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 776
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    iget-object v3, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 778
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 779
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onDeviceFound(Ljava/lang/String;Ljava/lang/String;BZ)V
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

.method public onDevicePairFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 878
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 879
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 881
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 882
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 883
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onDevicePairFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 886
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 891
    throw p1
.end method

.method public onDevicePaired(Ljava/lang/String;Ljava/lang/String;IB)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 822
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByte(B)V

    .line 827
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 828
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 829
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onDevicePaired(Ljava/lang/String;Ljava/lang/String;IB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 832
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 837
    throw p1
.end method

.method public onDeviceUnpaired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 851
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 852
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 854
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 855
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 856
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onDeviceUnpaired(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 859
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 864
    throw p1
.end method

.method public onDeviceUuidsGot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 916
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 921
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 922
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onDeviceUuidsGot(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 925
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 930
    throw p1
.end method

.method public onHfpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 1014
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1019
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1020
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onHfpStateChanged(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1023
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    throw p1
.end method

.method public onSecureSimplePairingRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 1080
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1083
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1084
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1085
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onSecureSimplePairingRequest(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1088
    :cond_0
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

.method public onServiceReady(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 593
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 596
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 597
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onServiceReady(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 600
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 605
    throw p1
.end method

.method public retBluetoothFoundDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 9
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
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 1100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1105
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1106
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1107
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1108
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/UiServiceCallback;->retBluetoothFoundDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1111
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1116
    throw p1
.end method

.method public retBluetoothPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 679
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 684
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 685
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 686
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 687
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/UiServiceCallback;->retBluetoothPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 690
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 695
    throw p1
.end method

.method public retBluetoothPairedDevicesExtend(I[Ljava/lang/String;[Ljava/lang/String;[I[B[Z[Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "nfore.android.bt.servicemanager.UiServiceCallback"

    .line 732
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 733
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v5, p2

    .line 734
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move-object/from16 v6, p3

    .line 735
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move-object/from16 v7, p4

    .line 736
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    move-object/from16 v8, p5

    .line 737
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v9, p6

    .line 738
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    move-object/from16 v10, p7

    .line 739
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeBooleanArray([Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    .line 740
    :try_start_1
    iget-object v3, v11, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v12, 0x0

    invoke-interface {v3, v4, v1, v2, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 741
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 742
    invoke-static {}, Lnfore/android/bt/servicemanager/UiServiceCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiServiceCallback;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lnfore/android/bt/servicemanager/UiServiceCallback;->retBluetoothPairedDevicesExtend(I[Ljava/lang/String;[Ljava/lang/String;[I[B[Z[Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 745
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 748
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    .line 748
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 750
    throw v0
.end method
