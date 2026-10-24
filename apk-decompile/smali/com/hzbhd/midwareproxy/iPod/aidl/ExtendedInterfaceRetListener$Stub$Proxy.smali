.class Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ExtendedInterfaceRetListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.iPod.aidl.ExtendedInterfaceRetListener"

    return-object v0
.end method

.method public playStatusChangeNotification(Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.ExtendedInterfaceRetListener"

    .line 230
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 232
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {p1, v0, v2}, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    :goto_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 240
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;->playStatusChangeNotification(Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 243
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    throw p1
.end method

.method public retDBTrackInfo(BILcom/hzbhd/midwareproxy/iPod/TrackInformation;)V
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
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.ExtendedInterfaceRetListener"

    .line 286
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 288
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    .line 290
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    invoke-virtual {p3, v0, v2}, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    :goto_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 297
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 298
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;->retDBTrackInfo(BILcom/hzbhd/midwareproxy/iPod/TrackInformation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 301
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    throw p1
.end method

.method public retPBTrackInfo(BILcom/hzbhd/midwareproxy/iPod/TrackInformation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.ExtendedInterfaceRetListener"

    .line 313
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 315
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    .line 317
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {p3, v0, v2}, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    :goto_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 325
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;->retPBTrackInfo(BILcom/hzbhd/midwareproxy/iPod/TrackInformation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 328
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    throw p1
.end method

.method public retUIDTrackInfo(B[BLcom/hzbhd/midwareproxy/iPod/TrackInformation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.ExtendedInterfaceRetListener"

    .line 259
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 261
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    .line 263
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    invoke-virtual {p3, v0, v2}, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    :goto_0
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 270
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 271
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;->retUIDTrackInfo(B[BLcom/hzbhd/midwareproxy/iPod/TrackInformation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 274
    :cond_1
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

.method public returnCategorizedDatabaseRecord(BILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.iPod.aidl.ExtendedInterfaceRetListener"

    .line 205
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 207
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    invoke-static {}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;->returnCategorizedDatabaseRecord(BILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 214
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    throw p1
.end method
