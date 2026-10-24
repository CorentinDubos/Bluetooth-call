.class Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "DisplayRemoteLingoRetListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.iPod.aidl.DisplayRemoteLingoRetListener"

    return-object v0
.end method

.method public remoteEventNotification(Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.DisplayRemoteLingoRetListener"

    .line 102
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p1, v0, v3}, Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    :goto_0
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 112
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/DisplayRemoteLingoRetListener;->remoteEventNotification(Lcom/hzbhd/midwareproxy/iPod/RemoteEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 115
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    throw p1
.end method
