.class Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAuxVideoInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.binder.service.IAuxVideoInterface"

    return-object v0
.end method

.method public getParingState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IAuxVideoInterface"

    .line 195
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;->getParingState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 200
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 206
    throw v2
.end method

.method public getVideoFotmat(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IAuxVideoInterface"

    .line 174
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 178
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;->getVideoFotmat(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 180
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    throw p1
.end method

.method public getVideoState(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IAuxVideoInterface"

    .line 153
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 157
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;->getVideoState(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 159
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    throw p1
.end method

.method public registerParkingCallback(Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IAuxVideoInterface"

    .line 215
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 216
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 217
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 219
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;->registerParkingCallback(Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 221
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 225
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    throw p1
.end method

.method public unregisterParkingCallback(Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.IAuxVideoInterface"

    .line 236
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 237
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 238
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 240
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;->unregisterParkingCallback(Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 242
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 243
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 246
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    throw p1
.end method
