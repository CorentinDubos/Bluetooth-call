.class Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraCallback.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.binder.callback.ICameraCallback"

    return-object v0
.end method

.method public onCameraClose()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.ICameraCallback"

    .line 243
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 246
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;->onCameraClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 249
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    throw v2
.end method

.method public onCameraOpen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.ICameraCallback"

    .line 225
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 228
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;->onCameraOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 231
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    throw v2
.end method

.method public onSignalCahnge(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.ICameraCallback"

    .line 261
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 262
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 265
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;->onSignalCahnge(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 268
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    throw p1
.end method

.method public onSurfaceDestroy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.ICameraCallback"

    .line 207
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 210
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;->onSurfaceDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 213
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 218
    throw v2
.end method

.method public onSurfaceViewCreate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.ICameraCallback"

    .line 189
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 192
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;->onSurfaceViewCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 195
    :cond_0
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
    move-exception v2

    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    throw v2
.end method

.method public onViewAdd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.ICameraCallback"

    .line 153
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 156
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;->onViewAdd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 159
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw v2
.end method

.method public onViewRemove()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.callback.ICameraCallback"

    .line 171
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 174
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;->onViewRemove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 177
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    throw v2
.end method
