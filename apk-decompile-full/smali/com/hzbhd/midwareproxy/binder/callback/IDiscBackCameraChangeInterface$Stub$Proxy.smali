.class Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDiscBackCameraChangeInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public backcamerarequestVideoExit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IDiscBackCameraChangeInterface"

    .line 99
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;->backcamerarequestVideoExit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 105
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 110
    throw v2
.end method

.method public backcamerarequestVideoFResume()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IDiscBackCameraChangeInterface"

    .line 117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/callback/IDiscBackCameraChangeInterface;->backcamerarequestVideoFResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 123
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.binder.callback.IDiscBackCameraChangeInterface"

    return-object v0
.end method
