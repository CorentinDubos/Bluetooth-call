.class Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDTVCallBackInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.binder.callback.IDTVCallBackInterface"

    return-object v0
.end method

.method public reportParkingState(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IDTVCallBackInterface"

    .line 92
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 93
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 96
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IDTVCallBackInterface;->reportParkingState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 99
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    throw p1
.end method
