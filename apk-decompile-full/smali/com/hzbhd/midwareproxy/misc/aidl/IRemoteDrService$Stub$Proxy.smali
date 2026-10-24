.class Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteDrService.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addRemoteDrListener(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.misc.aidl.IRemoteDrService"

    .line 169
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 170
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 171
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 173
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->addRemoteDrListener(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 176
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.misc.aidl.IRemoteDrService"

    return-object v0
.end method

.method public registerDrLocation(ILcom/hzbhd/midwareproxy/misc/aidl/INMEACallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.misc.aidl.IRemoteDrService"

    .line 247
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 249
    invoke-interface {p2}, Lcom/hzbhd/midwareproxy/misc/aidl/INMEACallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 250
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 252
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->registerDrLocation(ILcom/hzbhd/midwareproxy/misc/aidl/INMEACallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 255
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    throw p1
.end method

.method public registerOnDrResponseListener(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.misc.aidl.IRemoteDrService"

    .line 208
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 209
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 210
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 212
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->registerOnDrResponseListener(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 215
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    throw p1
.end method

.method public removeRemoteDrListener(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.misc.aidl.IRemoteDrService"

    .line 188
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 189
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 190
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 192
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->removeRemoteDrListener(Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 195
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    throw p1
.end method

.method public setDrProperty(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.misc.aidl.IRemoteDrService"

    .line 286
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 291
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->setDrProperty(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 294
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    throw p1
.end method

.method public unregisterDrLocation(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.misc.aidl.IRemoteDrService"

    .line 267
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 271
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->unregisterDrLocation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 274
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 279
    throw p1
.end method

.method public unregisterOnDrResponseListener(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.misc.aidl.IRemoteDrService"

    .line 227
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 228
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 229
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 231
    invoke-static {}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/misc/aidl/IRemoteDrService;->unregisterOnDrResponseListener(Lcom/hzbhd/midwareproxy/misc/aidl/IOnDrResponseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 234
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    throw p1
.end method
