.class Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVolumeService.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.misc.aidl.IVolumeService"

    return-object v0
.end method

.method public notifyNaviVolumeChange(III)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.misc.aidl.IVolumeService"

    .line 142
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 148
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService;->notifyNaviVolumeChange(III)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 150
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 154
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw p1
.end method

.method public notifyVolumeChange(ZZII)Z
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
    const-string v2, "com.hzbhd.midwareproxy.misc.aidl.IVolumeService"

    .line 118
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 119
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 120
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 124
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 125
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/misc/aidl/IVolumeService;->notifyVolumeChange(ZZII)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 127
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 131
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 133
    throw p1
.end method
