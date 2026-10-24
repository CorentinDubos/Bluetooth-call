.class Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "UiHidCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/UiHidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/UiHidCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lnfore/android/bt/servicemanager/UiHidCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 162
    iget-object v0, p0, Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "nfore.android.bt.servicemanager.UiHidCallback"

    return-object v0
.end method

.method public onAuthStateChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiHidCallback"

    .line 260
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 261
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object v3, p0, Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    invoke-static {}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiHidCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 264
    invoke-static {}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiHidCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiHidCallback;->onAuthStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 267
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 272
    throw p1
.end method

.method public onHidStateChanged(Ljava/lang/String;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiHidCallback"

    .line 200
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    invoke-static {}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiHidCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 207
    invoke-static {}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiHidCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiHidCallback;->onHidStateChanged(Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 210
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    throw p1
.end method

.method public onScreenModeChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiHidCallback"

    .line 241
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    invoke-static {}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiHidCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 245
    invoke-static {}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiHidCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiHidCallback;->onScreenModeChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 248
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    throw p1
.end method

.method public onScreenStateChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "nfore.android.bt.servicemanager.UiHidCallback"

    .line 222
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-object v2, p0, Lnfore/android/bt/servicemanager/UiHidCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    invoke-static {}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiHidCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    invoke-static {}, Lnfore/android/bt/servicemanager/UiHidCallback$Stub;->getDefaultImpl()Lnfore/android/bt/servicemanager/UiHidCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiHidCallback;->onScreenStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 229
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    throw p1
.end method
