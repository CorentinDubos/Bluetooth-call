.class Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISettingInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 4601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4602
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public SetBTMic(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8374
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8376
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8377
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8378
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->SetBTMic(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8381
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8386
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 4606
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public closeSWC()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9450
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9451
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xca

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9452
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9453
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->closeSWC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9456
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 9459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9461
    throw v2
.end method

.method public enableFactoryReset(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5042
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5043
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5044
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5045
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5046
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->enableFactoryReset(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5049
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5054
    throw p1
.end method

.method public enableGPSSyncSwitch(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5087
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5088
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5089
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5090
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5091
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->enableGPSSyncSwitch(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5094
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5099
    throw p1
.end method

.method public enableRDSSyncSwitch(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5402
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5403
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5404
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5405
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5406
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->enableRDSSyncSwitch(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5409
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5414
    throw p1
.end method

.method public endSWCSample()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9533
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9534
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xce

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9535
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9536
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->endSWCSample()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9539
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 9542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9544
    throw v2
.end method

.method public getAV1Gain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7355
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7356
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7357
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7358
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getAV1Gain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7360
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7366
    throw v2
.end method

.method public getAV2Gain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7402
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7403
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7404
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7405
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getAV2Gain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7407
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7408
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7413
    throw v2
.end method

.method public getAntStasus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10806
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10807
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x109

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10808
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10809
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getAntStasus()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10811
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10812
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10817
    throw v2
.end method

.method public getBTAudioGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10211
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10212
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xec

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10213
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10214
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBTAudioGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10216
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10217
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10222
    throw v2
.end method

.method public getBTGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7263
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7264
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7265
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7266
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBTGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7268
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7269
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7274
    throw v2
.end method

.method public getBTMic()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8355
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8356
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8357
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8358
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBTMic()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8360
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8366
    throw v2
.end method

.method public getBTPhoneGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10164
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10165
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xea

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10166
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10167
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBTPhoneGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10169
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10170
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10175
    throw v2
.end method

.method public getBeep()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6312
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6313
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6314
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6315
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBeep()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6317
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6318
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 6321
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 6321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6323
    throw v2
.end method

.method public getBgLigtSettingInfo()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5831
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5832
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5833
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5834
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBgLigtSettingInfo()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 5836
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5837
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 5840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5842
    throw v2
.end method

.method public getBlackOut()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6207
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6208
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6209
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6210
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBlackOut()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6212
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6213
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6218
    throw v2
.end method

.method public getBrightness()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5713
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5714
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5715
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5716
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getBrightness()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5718
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5719
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 5722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5724
    throw v2
.end method

.method public getCameraMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6110
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6111
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6112
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6113
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCameraMode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6115
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6116
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6121
    throw v2
.end method

.method public getCameraOutGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5562
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5563
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5564
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5565
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCameraOutGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5567
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5568
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 5571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5573
    throw v2
.end method

.method public getCanBaudRate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10683
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10684
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x103

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10685
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10686
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanBaudRate()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10688
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10689
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10694
    throw v2
.end method

.method public getCanIsAppHandleKey()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10930
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10931
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10932
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10933
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanIsAppHandleKey()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10935
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10936
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10941
    throw v2
.end method

.method public getCanPackType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10969
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10970
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x111

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10971
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10972
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanPackType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10974
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10975
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10980
    throw v2
.end method

.method public getCanVersionInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6559
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6560
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6561
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6562
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanVersionInfo()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 6564
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6565
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 6568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6570
    throw v2
.end method

.method public getCanbusAirHide()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10276
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10277
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xef

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10278
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10279
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanbusAirHide()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10281
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10282
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 10285
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 10285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10287
    throw v2
.end method

.method public getCanbusSwapKeyPrevNext()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10360
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10361
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10362
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10363
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanbusSwapKeyPrevNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10365
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10366
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 10369
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 10369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10371
    throw v2
.end method

.method public getCanbusSwapKeyUpDn()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10318
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10319
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10320
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10321
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCanbusSwapKeyUpDn()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10323
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10324
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 10327
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 10327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10329
    throw v2
.end method

.method public getCarLogoIndex()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5784
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5785
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5786
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5787
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCarLogoIndex()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5789
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5790
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 5793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5795
    throw v2
.end method

.method public getCarMediaGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10047
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10048
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10049
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10050
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCarMediaGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10056
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10052
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10053
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10056
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10056
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10058
    throw v2
.end method

.method public getChildrenLockLevel()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6926
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6927
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6928
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6929
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getChildrenLockLevel()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6931
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6932
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6937
    throw v2
.end method

.method public getChildrenLockLevelState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6871
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6872
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6873
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6874
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getChildrenLockLevelState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6876
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6877
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6882
    throw v2
.end method

.method public getChildrenLockPassword()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6824
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6825
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6826
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6827
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getChildrenLockPassword()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 6829
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6830
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 6833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6835
    throw v2
.end method

.method public getCloseReverseDetect()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11159
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11160
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11161
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11162
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCloseReverseDetect()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11164
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11165
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 11168
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 11168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11170
    throw v2
.end method

.method public getCmmbGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6981
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6982
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6983
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6984
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCmmbGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6986
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6987
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6992
    throw v2
.end method

.method public getColorLed()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9745
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9746
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9747
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9748
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getColorLed()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 9750
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9751
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 9754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9756
    throw v2
.end method

.method public getColorLedType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9769
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9770
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9771
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9772
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getColorLedType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 9774
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9775
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 9778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9780
    throw v2
.end method

.method public getConfigAmbulance()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10480
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10481
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10482
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10483
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getConfigAmbulance()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10485
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10486
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10491
    throw v2
.end method

.method public getCurrentArea()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6412
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6413
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6414
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6415
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCurrentArea()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6417
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6418
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6423
    throw v2
.end method

.method public getCustomerID()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4706
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4707
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4708
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4709
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getCustomerID()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 4711
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4712
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4717
    throw v2
.end method

.method public getDVDAudio()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6683
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6684
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6685
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6686
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDVDAudio()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 6688
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6689
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 6692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6694
    throw v2
.end method

.method public getDVDGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7169
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7170
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7171
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7172
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDVDGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7174
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7175
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7180
    throw v2
.end method

.method public getDVDSubTitle()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6730
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6731
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6732
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6733
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDVDSubTitle()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 6735
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6736
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 6739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6741
    throw v2
.end method

.method public getDVDTestCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8394
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8395
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8396
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8397
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDVDTestCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8399
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8400
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8405
    throw v2
.end method

.method public getDabGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7122
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7123
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7124
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7125
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDabGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7127
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7128
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7133
    throw v2
.end method

.method public getDefaultSharedUtilBoolean(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10521
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10523
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10524
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10525
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDefaultSharedUtilBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10527
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10528
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 10531
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 10531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10533
    throw p1
.end method

.method public getDefaultSharedUtilInt(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10500
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10501
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10502
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10503
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10504
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDefaultSharedUtilInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10506
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 10510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10512
    throw p1
.end method

.method public getDgcMCUVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4771
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4772
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4773
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4774
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDgcMCUVersion()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 4776
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4777
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4782
    throw v2
.end method

.method public getDiscEjectingTime()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10621
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10622
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x100

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10623
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10624
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDiscEjectingTime()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10626
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10627
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10632
    throw v2
.end method

.method public getDiscEnteringTime()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10601
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10602
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10603
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10604
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDiscEnteringTime()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10606
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10607
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10612
    throw v2
.end method

.method public getDiscMenu()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6777
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6778
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6779
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6780
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDiscMenu()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 6782
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6783
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 6786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6788
    throw v2
.end method

.method public getDvbtGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7028
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7029
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7030
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7031
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getDvbtGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7037
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7033
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7034
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7037
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7037
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7039
    throw v2
.end method

.method public getEQBass(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8701
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8702
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8703
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8704
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8705
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQBass(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8707
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8708
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 8711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8713
    throw p1
.end method

.method public getEQBassQValue(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9126
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9128
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9129
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9130
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQBassQValue(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9132
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9133
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 9136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9138
    throw p1
.end method

.method public getEQBassValue(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8727
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8728
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8729
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xad

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8730
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8731
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQBassValue(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8733
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8734
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 8737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8739
    throw p1
.end method

.method public getEQLevelValue()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11059
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11060
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x115

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11061
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11062
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQLevelValue()[I

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 11064
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11065
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 11068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11070
    throw v2
.end method

.method public getEQMid(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8753
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8755
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xae

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8756
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8757
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQMid(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8759
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8760
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 8763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8765
    throw p1
.end method

.method public getEQMidQValue(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9176
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9178
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9179
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9180
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQMidQValue(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 9182
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9183
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 9186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9188
    throw p1
.end method

.method public getEQMidValue(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8779
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8780
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8781
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8782
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8783
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQMidValue(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8785
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8786
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 8789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8791
    throw p1
.end method

.method public getEQTreble(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8805
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8806
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8807
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8808
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8809
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQTreble(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8811
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8812
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 8815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8817
    throw p1
.end method

.method public getEQTrebleValue(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8831
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8833
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8834
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8835
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQTrebleValue(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 8837
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8838
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 8841
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8843
    throw p1
.end method

.method public getEQType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8645
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8646
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8647
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8648
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8650
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8651
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8656
    throw v2
.end method

.method public getEQTypeFreqLevelValue(I)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9274
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9276
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9277
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9278
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQTypeFreqLevelValue(I)[I

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 9280
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9281
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 9284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9286
    throw p1
.end method

.method public getEQ_HARDWARE_VERSION()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9299
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9300
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9301
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9302
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getEQ_HARDWARE_VERSION()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 9304
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9305
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 9308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9310
    throw v2
.end method

.method public getFactory4GModule()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11348
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11349
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x123

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11350
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11351
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactory4GModule()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11353
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11354
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11359
    throw v2
.end method

.method public getFactoryAMDistant()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7824
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7825
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7826
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7827
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryAMDistant()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7829
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7830
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7835
    throw v2
.end method

.method public getFactoryAMLocal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7777
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7778
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7779
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7780
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryAMLocal()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7782
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7783
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7788
    throw v2
.end method

.method public getFactoryCanType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7997
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7998
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7999
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8000
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryCanType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8002
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8003
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8008
    throw v2
.end method

.method public getFactoryDirection()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11430
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11431
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x127

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11432
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11433
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryDirection()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11435
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11436
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11441
    throw v2
.end method

.method public getFactoryDtvModule()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8110
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8111
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8112
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8113
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryDtvModule()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8115
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8116
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8121
    throw v2
.end method

.method public getFactoryEncoding()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11473
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11474
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x129

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11475
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11476
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryEncoding()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11478
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11479
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11484
    throw v2
.end method

.method public getFactoryFMDistant()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7730
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7731
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7732
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7733
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryFMDistant()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7735
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7736
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7741
    throw v2
.end method

.method public getFactoryFMLocal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7683
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7684
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7685
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7686
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryFMLocal()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7688
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7689
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7694
    throw v2
.end method

.method public getFactoryLcdDriveConfig()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11389
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11390
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x125

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11391
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11392
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryLcdDriveConfig()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11394
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11395
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11400
    throw v2
.end method

.method public getFactoryLvdsDisplayDriverCurrentLevel()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11202
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11203
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11204
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11205
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryLvdsDisplayDriverCurrentLevel()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11207
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11208
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11213
    throw v2
.end method

.method public getFactoryPanelType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6512
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6513
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6514
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6515
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryPanelType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6517
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6518
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6523
    throw v2
.end method

.method public getFactoryRDSType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7633
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7634
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7635
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7636
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryRDSType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7638
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7639
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7644
    throw v2
.end method

.method public getFactoryRadioArea()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7524
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7525
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7526
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7527
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryRadioArea()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7529
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7530
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7535
    throw v2
.end method

.method public getFactoryRadioModel()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7580
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7581
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7582
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7583
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryRadioModel()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7585
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7586
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7591
    throw v2
.end method

.method public getFactorySystemAutodimmerfunc()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8200
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8201
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8202
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8203
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactorySystemAutodimmerfunc()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8205
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8206
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 8209
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 8209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8211
    throw v2
.end method

.method public getFactorySystemBrakeoverride()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8239
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8240
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x98

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8241
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8242
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactorySystemBrakeoverride()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8244
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8245
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 8248
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 8248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8250
    throw v2
.end method

.method public getFactorySystemMechaback()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8278
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8279
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8280
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8281
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactorySystemMechaback()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8283
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8284
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 8287
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 8287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8289
    throw v2
.end method

.method public getFactorySystemRegioncode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7878
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7879
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7880
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7881
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactorySystemRegioncode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7883
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7884
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7889
    throw v2
.end method

.method public getFactorySystemTVArea()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7941
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7942
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7943
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7944
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactorySystemTVArea()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7946
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7947
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7952
    throw v2
.end method

.method public getFactoryT8AVOUT_Display()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8180
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8181
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x95

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8182
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8183
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFactoryT8AVOUT_Display()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8185
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8186
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8191
    throw v2
.end method

.method public getFadeBalanceFL()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8418
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8419
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8420
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8421
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFadeBalanceFL()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8423
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8424
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8429
    throw v2
.end method

.method public getFadeBalanceFR()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8442
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8443
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8444
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8445
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFadeBalanceFR()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8447
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8448
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8453
    throw v2
.end method

.method public getFadeBalanceRL()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8466
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8467
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8468
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8469
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFadeBalanceRL()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8471
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8472
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8477
    throw v2
.end method

.method public getFadeBalanceRR()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8490
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8491
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8492
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8493
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFadeBalanceRR()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8495
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8496
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8501
    throw v2
.end method

.method public getFastCharging()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10724
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10725
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x105

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10726
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10727
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFastCharging()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10729
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10730
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10735
    throw v2
.end method

.method public getFastChargingisSupport()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10765
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10766
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x107

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10767
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10768
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFastChargingisSupport()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10770
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10771
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10776
    throw v2
.end method

.method public getFrontCameraMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6063
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6064
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6065
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6066
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getFrontCameraMode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6068
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6069
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6074
    throw v2
.end method

.method public getGPSSyncSwitch()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5065
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5066
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5067
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5068
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getGPSSyncSwitch()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5070
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5071
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5074
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5076
    throw v2
.end method

.method public getHeadlightSwitch()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5110
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5111
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5112
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5113
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getHeadlightSwitch()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5115
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5116
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5119
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5121
    throw v2
.end method

.method public getHourMode()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6359
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6360
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6361
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6362
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getHourMode()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6364
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6365
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 6368
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 6368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6370
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    return-object v0
.end method

.method public getIsSoundMix()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4618
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4619
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4620
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4621
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getIsSoundMix()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 4623
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4624
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    move v3, v4

    .line 4627
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception v2

    .line 4627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4629
    throw v2
.end method

.method public getKeyColor()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6157
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6158
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6159
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6160
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getKeyColor()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6162
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6163
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6168
    throw v2
.end method

.method public getLoudness()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8590
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8591
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8592
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8593
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getLoudness()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8595
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8596
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 8599
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 8599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8601
    throw v2
.end method

.method public getMCUVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4748
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4749
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4750
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4751
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getMCUVersion()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 4753
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4754
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 4757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4759
    throw v2
.end method

.method public getMcuAmpItem([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9998
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 10000
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10001
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10002
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getMcuAmpItem([B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 10004
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10005
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 10008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10010
    throw p1
.end method

.method public getMcuTestItem([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4791
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4793
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4794
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4795
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getMcuTestItem([B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 4797
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4798
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4803
    throw p1
.end method

.method public getMediaGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10023
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10024
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10025
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10026
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getMediaGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10028
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10034
    throw v2
.end method

.method public getMotorInfo()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5880
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5881
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5882
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5883
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getMotorInfo()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 5885
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5886
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 5889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5891
    throw v2
.end method

.method public getNaviGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10118
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10119
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10120
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getNaviGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10122
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10123
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10128
    throw v2
.end method

.method public getNavigationModule()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6261
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6262
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6263
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6264
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getNavigationModule()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6266
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6267
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6272
    throw v2
.end method

.method public getNetworkLicense()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10460
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10461
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10462
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10463
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getNetworkLicense()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10465
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10466
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10471
    throw v2
.end method

.method public getPNLAllKeyInfo(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9350
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9351
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9352
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9353
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9354
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getPNLAllKeyInfo(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 9356
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9357
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 9360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9362
    throw p1
.end method

.method public getPanoramicCameraSwitch()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5290
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5291
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5292
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5293
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getPanoramicCameraSwitch()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5295
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5296
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5299
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5301
    throw v2
.end method

.method public getParking()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7309
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7310
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7311
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7312
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getParking()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7314
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7315
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 7318
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 7318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7320
    throw v2
.end method

.method public getPowerKeySwitch()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5335
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5336
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5337
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5338
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getPowerKeySwitch()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5340
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5341
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5344
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5346
    throw v2
.end method

.method public getRDSSyncSwitch()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5380
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5381
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5382
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5383
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getRDSSyncSwitch()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5385
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5386
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5389
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5391
    throw v2
.end method

.method public getRadioGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7216
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7217
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7218
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7219
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getRadioGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7221
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7222
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7227
    throw v2
.end method

.method public getRadioRange()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6465
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6466
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6467
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6468
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getRadioRange()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6470
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6471
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 6474
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 6474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6476
    throw v2
.end method

.method public getReversingBaseline()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5245
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5246
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5247
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5248
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getReversingBaseline()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5250
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5251
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5254
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5256
    throw v2
.end method

.method public getReversingMute()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5200
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5201
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5202
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5203
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getReversingMute()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5205
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5206
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5209
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5211
    throw v2
.end method

.method public getReversingTrackSwitch()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5155
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5156
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5157
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5158
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getReversingTrackSwitch()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5160
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5161
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 5164
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 5164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5166
    throw v2
.end method

.method public getSWCLearnLevel()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11262
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11263
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11264
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11265
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSWCLearnLevel()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11267
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11268
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11273
    throw v2
.end method

.method public getSWCSettings()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9471
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9472
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9473
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9474
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSWCSettings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9477
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 9480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9482
    throw v2
.end method

.method public getScreenreverse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8063
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8064
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x90

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8065
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8066
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getScreenreverse()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8068
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8069
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 8072
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 8072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8074
    throw v2
.end method

.method public getSharedBool(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4839
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4841
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4842
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4843
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSharedBool(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4845
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4846
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 4849
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 4849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4851
    throw p1
.end method

.method public getSharedInt(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4815
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4817
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4818
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4819
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSharedInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 4821
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4822
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 4825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4827
    throw p1
.end method

.method public getSharedStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4863
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4864
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4865
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4866
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4867
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSharedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 4869
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4870
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4875
    throw p1
.end method

.method public getShutDownDelayTimeAccOff()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9901
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9902
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xde

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9903
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9904
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getShutDownDelayTimeAccOff()B

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 9906
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9907
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 9910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9912
    throw v2
.end method

.method public getSoundMixScale()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8852
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8853
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8854
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8855
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSoundMixScale()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8857
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8858
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8863
    throw v2
.end method

.method public getSubSwitch()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6583
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6584
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6585
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6586
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSubSwitch()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6588
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6589
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 6592
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 6592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6594
    throw v2
.end method

.method public getSubWFilter()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6633
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6634
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6635
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6636
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSubWFilter()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 6638
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6639
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 6642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6644
    throw v2
.end method

.method public getSubWGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8543
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8544
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8545
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8546
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSubWGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 8548
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8549
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 8552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8554
    throw v2
.end method

.method public getSwcLongKeySetting()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9489
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9490
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9491
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9492
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSwcLongKeySetting()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9495
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 9498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9500
    throw v2
.end method

.method public getSysSetting()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11078
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11079
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x116

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11080
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11081
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getSysSetting()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11084
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 11087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11089
    throw v2
.end method

.method public getTVOutGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5664
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5665
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5666
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5667
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getTVOutGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5669
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5670
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 5673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5675
    throw v2
.end method

.method public getUbootVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11282
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11283
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x120

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11284
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11285
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getUbootVersion()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11287
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11293
    throw v2
.end method

.method public getVcom()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10421
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10422
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10423
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10424
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVcom()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 10426
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10427
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 10430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10432
    throw v2
.end method

.method public getVideoChipN3ChannelType(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10849
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10850
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10851
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10852
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10853
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVideoChipN3ChannelType(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 10855
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10856
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 10859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10861
    throw p1
.end method

.method public getVideoInput()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5458
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5459
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5460
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5461
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVideoInput()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5463
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5464
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 5467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5469
    throw v2
.end method

.method public getVideoOutGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5613
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5614
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5615
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5616
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVideoOutGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5618
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5619
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 5622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5624
    throw v2
.end method

.method public getVideoOutput()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5511
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5512
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5513
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5514
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVideoOutput()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5516
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5517
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 5520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5522
    throw v2
.end method

.method public getVolumeValue()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5760
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5761
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5762
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5763
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getVolumeValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 5765
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5766
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 5769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5771
    throw v2
.end method

.method public getXmGain()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7075
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7076
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7077
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7078
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getXmGain()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 7080
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7081
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 7084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7086
    throw v2
.end method

.method public getreverse_exit_mcudelaytime_settings()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11099
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11100
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x117

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11101
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11102
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->getreverse_exit_mcudelaytime_settings()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 11104
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11105
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 11108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11110
    throw v2
.end method

.method public notifyCarplayVolumeType(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10991
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10993
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x112

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10994
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10995
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->notifyCarplayVolumeType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11001
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10998
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11001
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11001
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11003
    throw p1
.end method

.method public openSWC()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9429
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9430
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9431
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9432
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->openSWC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9435
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 9438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9440
    throw v2
.end method

.method public playBeep()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4998
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4999
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5000
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5001
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->playBeep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5004
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 5007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5009
    throw v2
.end method

.method public pnlSample(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9374
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9376
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9377
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9378
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->pnlSample(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9381
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9384
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9386
    throw p1
.end method

.method public reSetSWC()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9595
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9596
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9597
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9598
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reSetSWC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9601
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 9604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9606
    throw v2
.end method

.method public refreshEQType()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9979
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9980
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9981
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9982
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->refreshEQType()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9985
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 9988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9990
    throw v2
.end method

.method public registerAutoTestCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9669
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 9670
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9671
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9672
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9673
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->registerAutoTestCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9676
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9681
    throw p1
.end method

.method public registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4662
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4663
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4664
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4665
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4666
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISettingCallBackInterface;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 4668
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4669
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4674
    throw p1
.end method

.method public registerSWCCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9618
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 9619
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9620
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9621
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9622
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->registerSWCCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISWCCallBackInterface;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 9624
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9625
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 9628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9630
    throw p1
.end method

.method public reporTestMcuInfor([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6039
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6040
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6041
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6042
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6043
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reporTestMcuInfor([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6046
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6051
    throw p1
.end method

.method public reportCanbusInfo([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5971
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5972
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5973
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5974
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5975
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reportCanbusInfo([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5978
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5983
    throw p1
.end method

.method public reportCanbusInfoOther(B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5992
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5993
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 5994
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5995
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5996
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5997
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reportCanbusInfoOther(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6000
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6005
    throw p1
.end method

.method public reportCanbusUpdData([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6014
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6016
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6017
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6018
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6019
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6020
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reportCanbusUpdData([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6023
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6028
    throw p1
.end method

.method public reportDevice_YH([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11515
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11516
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 11517
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11518
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11519
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reportDevice_YH([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11522
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11527
    throw p1
.end method

.method public reportKeySensitivityValue(B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10640
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10641
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 10642
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 10643
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x101

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10644
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10645
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reportKeySensitivityValue(B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10648
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10653
    throw p1
.end method

.method public reportSmartPowerInfo([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11303
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 11305
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x121

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11306
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11307
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reportSmartPowerInfo([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11310
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11315
    throw p1
.end method

.method public reqCanbusInfo([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5925
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5926
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5927
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5928
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5929
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reqCanbusInfo([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5932
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5937
    throw p1
.end method

.method public reqMcuKey([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5948
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5950
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5951
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5952
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reqMcuKey([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5955
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5960
    throw p1
.end method

.method public reqMotorInfo()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5903
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5904
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5905
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5906
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reqMotorInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5909
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 5912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5914
    throw v2
.end method

.method public reqPNLAllKeyInfo(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9326
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9327
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9328
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9329
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9330
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->reqPNLAllKeyInfo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9333
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9338
    throw p1
.end method

.method public requestEqBalance()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9860
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9861
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9862
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9863
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->requestEqBalance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9866
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 9869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9871
    throw v2
.end method

.method public resetMpuDelay(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5020
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5021
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 5022
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5023
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5024
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->resetMpuDelay(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5027
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5032
    throw p1
.end method

.method public saveAppdata(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9939
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9941
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9942
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9943
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->saveAppdata(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9946
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9951
    throw p1
.end method

.method public saveChipN3BackCameraColorAdjust_to_bsp(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11324
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11326
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11327
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11328
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x122

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11329
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11330
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->saveChipN3BackCameraColorAdjust_to_bsp(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11333
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11338
    throw p1
.end method

.method public savePNLSettings(I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9398
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9400
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9401
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9402
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9403
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->savePNLSettings(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9406
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9411
    throw p1
.end method

.method public saveSWCSettings([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9554
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9555
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9556
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9557
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9558
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->saveSWCSettings([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9564
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9561
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9564
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9564
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9566
    throw p1
.end method

.method public saveSWCSettingsLongKey([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9573
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9574
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9575
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9576
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9577
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->saveSWCSettingsLongKey([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9580
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9585
    throw p1
.end method

.method public sendAppdata(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9958
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9960
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9961
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9962
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->sendAppdata(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9965
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9970
    throw p1
.end method

.method public sendSelectCarCanTypeInfoMCU(IIII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10888
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10890
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10891
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10892
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10893
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10894
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10895
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->sendSelectCarCanTypeInfoMCU(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10898
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10903
    throw p1
.end method

.method public setAV1Gain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7378
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7380
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7381
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7382
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setAV1Gain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7385
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7390
    throw p1
.end method

.method public setAV2Gain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7425
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7426
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7427
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7428
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7429
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setAV2Gain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7432
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7437
    throw p1
.end method

.method public setAnalogInputColor(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10541
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10543
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10544
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10545
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10546
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10547
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setAnalogInputColor(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10550
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10555
    throw p1
.end method

.method public setAntStasus(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10786
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10787
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10788
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x108

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10789
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10790
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setAntStasus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10793
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10798
    throw p1
.end method

.method public setAutoTestLocationToPC(Landroid/location/Location;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9714
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 9716
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9717
    invoke-virtual {p1, v0, v2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 9720
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9722
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9723
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9724
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9725
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setAutoTestLocationToPC(Landroid/location/Location;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9728
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9733
    throw p1
.end method

.method public setAutoTestVersionToPC(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9838
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9839
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9840
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9841
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9842
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setAutoTestVersionToPC(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9845
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9850
    throw p1
.end method

.method public setBTAudioGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10234
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10236
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xed

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10237
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10238
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBTAudioGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10241
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10246
    throw p1
.end method

.method public setBTGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7286
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7287
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7288
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7289
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7290
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBTGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7293
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7298
    throw p1
.end method

.method public setBTPhoneGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10187
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10189
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xeb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10190
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10191
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBTPhoneGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10194
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10199
    throw p1
.end method

.method public setBeep(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6335
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 6336
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6337
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6338
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6339
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBeep(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6342
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6347
    throw p1
.end method

.method public setBgLigtSettingInfo(I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5855
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5856
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5857
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5858
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5859
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5860
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBgLigtSettingInfo(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5863
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5868
    throw p1
.end method

.method public setBlackOut(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6233
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6235
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6236
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6237
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBlackOut(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6240
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6245
    throw p1
.end method

.method public setBrightness(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5736
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5738
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5739
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5740
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setBrightness(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5743
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5748
    throw p1
.end method

.method public setCameraMode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6133
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6135
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6136
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6137
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCameraMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6140
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6145
    throw p1
.end method

.method public setCameraOutGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5587
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5589
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5590
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5591
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCameraOutGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5594
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5599
    throw p1
.end method

.method public setCanBaudRate(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10663
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10665
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x102

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10666
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10667
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanBaudRate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10670
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10675
    throw p1
.end method

.method public setCanIsAppHandleKey(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10910
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10911
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10912
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10913
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10914
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanIsAppHandleKey(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10917
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10922
    throw p1
.end method

.method public setCanPackType(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10949
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10951
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x110

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10952
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10953
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanPackType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10956
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10961
    throw p1
.end method

.method public setCanbuKeySwap(ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10381
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 10382
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 10383
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10384
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf4

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10385
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10386
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanbuKeySwap(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10389
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10394
    throw p1
.end method

.method public setCanbusAirHide(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10256
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 10257
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10258
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xee

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10259
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10260
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanbusAirHide(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10263
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10268
    throw p1
.end method

.method public setCanbusSwapKeyPrevNext(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10340
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 10341
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10342
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10343
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10344
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanbusSwapKeyPrevNext(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10347
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10352
    throw p1
.end method

.method public setCanbusSwapKeyUpDn(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10298
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 10299
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10300
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10301
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10302
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCanbusSwapKeyUpDn(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10305
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10310
    throw p1
.end method

.method public setCarLogoIndex(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5807
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5808
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5809
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5810
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5811
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCarLogoIndex(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5814
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5819
    throw p1
.end method

.method public setCarMediaGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10093
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10094
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10095
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10096
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10097
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCarMediaGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10100
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10105
    throw p1
.end method

.method public setChildrenLockLevel(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6957
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6959
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6960
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6961
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setChildrenLockLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6964
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6969
    throw p1
.end method

.method public setChildrenLockLevelState(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6894
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6895
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6896
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6897
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6898
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setChildrenLockLevelState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6901
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6906
    throw p1
.end method

.method public setChildrenLockPassword(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6847
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6849
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6850
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6851
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setChildrenLockPassword(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6854
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6859
    throw p1
.end method

.method public setCloseReverseDetect(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11139
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 11140
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11141
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x119

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11142
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11143
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCloseReverseDetect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11146
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11151
    throw p1
.end method

.method public setCmmbGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7004
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7006
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7007
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7008
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCmmbGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7011
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7016
    throw p1
.end method

.method public setColorLed(ZBBB)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9791
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 9792
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9793
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9794
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 9795
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByte(B)V

    .line 9796
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9797
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9798
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setColorLed(ZBBB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9801
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9806
    throw p1
.end method

.method public setColorLedwithType(BBBB)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9813
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9814
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 9815
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9816
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 9817
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByte(B)V

    .line 9818
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xda

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9819
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9820
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setColorLedwithType(BBBB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9823
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9828
    throw p1
.end method

.method public setCoolerFanSupport(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11012
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11013
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11014
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x113

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11015
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11016
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCoolerFanSupport(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11019
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11024
    throw p1
.end method

.method public setCurrentArea(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6441
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6443
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6444
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6445
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCurrentArea(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6448
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6453
    throw p1
.end method

.method public setCustomerID(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4725
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4727
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4728
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4729
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setCustomerID(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4732
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4737
    throw p1
.end method

.method public setDVDAudio(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6706
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6707
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6708
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6709
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6710
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDVDAudio(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6713
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6718
    throw p1
.end method

.method public setDVDGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7192
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7194
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7195
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7196
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDVDGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7199
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7204
    throw p1
.end method

.method public setDVDSubTitle(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6753
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6755
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6756
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6757
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDVDSubTitle(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6760
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6765
    throw p1
.end method

.method public setDabGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7145
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7147
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7148
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7149
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDabGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7152
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7157
    throw p1
.end method

.method public setDateTime(BBBBBBB)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5424
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 5425
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByte(B)V

    move v5, p2

    .line 5426
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v6, p3

    .line 5427
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v7, p4

    .line 5428
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v8, p5

    .line 5429
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v9, p6

    .line 5430
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeByte(B)V

    move/from16 v10, p7

    .line 5431
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    .line 5432
    :try_start_1
    iget-object v3, v11, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v12, 0x0

    invoke-interface {v3, v4, v1, v2, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5433
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5434
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v3

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDateTime(BBBBBBB)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5440
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5437
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5440
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    .line 5440
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5442
    throw v0
.end method

.method public setDiscEjectingTime(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10581
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 10583
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10584
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10585
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDiscEjectingTime(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10588
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10593
    throw p1
.end method

.method public setDiscEnteringTime(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10562
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 10564
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10565
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10566
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDiscEnteringTime(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10569
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10574
    throw p1
.end method

.method public setDiscMenu(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6800
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6801
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6802
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6803
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6804
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDiscMenu(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6807
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6812
    throw p1
.end method

.method public setDvbtGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7051
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7053
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7054
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7055
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDvbtGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7058
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7063
    throw p1
.end method

.method public setDvdClearCounter(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7471
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 7472
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7473
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7474
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7475
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDvdClearCounter(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7478
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7483
    throw p1
.end method

.method public setDvdServoLoaderStart(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7448
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 7449
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7450
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x78

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7451
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7452
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setDvdServoLoaderStart(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7455
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7460
    throw p1
.end method

.method public setEQBass(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8895
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8896
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8897
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8898
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8899
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8900
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQBass(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8903
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8908
    throw p1
.end method

.method public setEQBassAndValue(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8946
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8947
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8948
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8949
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8950
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8951
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8952
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQBassAndValue(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8955
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8960
    throw p1
.end method

.method public setEQBassQValue(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9151
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9153
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9154
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9155
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9156
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQBassQValue(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9159
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9164
    throw p1
.end method

.method public setEQBassValue(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8920
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8922
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8923
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8924
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8925
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQBassValue(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8928
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8933
    throw p1
.end method

.method public setEQLevelValue([I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11035
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11036
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 11037
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x114

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11038
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11039
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQLevelValue([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11042
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11047
    throw p1
.end method

.method public setEQMid(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8972
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8973
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8974
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8975
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8976
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8977
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQMid(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8980
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8985
    throw p1
.end method

.method public setEQMidAndValue(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9023
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9024
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9025
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9026
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9027
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9028
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9029
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQMidAndValue(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9032
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9037
    throw p1
.end method

.method public setEQMidQValue(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9201
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9203
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9204
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9205
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9206
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQMidQValue(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9209
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9214
    throw p1
.end method

.method public setEQMidValue(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8997
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8998
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8999
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9000
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9001
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9002
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQMidValue(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9005
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9010
    throw p1
.end method

.method public setEQResetDefault()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9224
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9225
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9226
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9227
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQResetDefault()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9230
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 9233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9235
    throw v2
.end method

.method public setEQTreble(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9049
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9050
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9051
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9052
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xba

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9053
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9054
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQTreble(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9057
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9062
    throw p1
.end method

.method public setEQTrebleAndValue(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9102
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9103
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9104
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9105
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9106
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQTrebleAndValue(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9109
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9114
    throw p1
.end method

.method public setEQTrebleValue(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9074
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9075
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9076
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9077
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9078
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9079
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQTrebleValue(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9082
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9087
    throw p1
.end method

.method public setEQType(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8676
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8677
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8678
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xab

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8679
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8680
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8683
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8688
    throw p1
.end method

.method public setEQTypeFreqLevelValue(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9248
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9250
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9251
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9252
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9253
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9254
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setEQTypeFreqLevelValue(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9257
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9262
    throw p1
.end method

.method public setFactory4GModule(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11367
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11368
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11369
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x124

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11370
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11371
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactory4GModule(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11374
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11379
    throw p1
.end method

.method public setFactoryAMDistant(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7847
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7849
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7850
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7851
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryAMDistant(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7854
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7859
    throw p1
.end method

.method public setFactoryAMLocal(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7800
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7801
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7802
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7803
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7804
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryAMLocal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7807
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7812
    throw p1
.end method

.method public setFactoryBtModule(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8086
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8087
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8088
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x91

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8089
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8090
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryBtModule(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8093
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8098
    throw p1
.end method

.method public setFactoryCanType(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8020
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8021
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8022
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8023
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8024
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryCanType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8027
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8032
    throw p1
.end method

.method public setFactoryDirection(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11449
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11451
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x128

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11452
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11453
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryDirection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11456
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11461
    throw p1
.end method

.method public setFactoryDtvModule(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8133
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8135
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x93

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8136
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8137
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryDtvModule(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8140
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8145
    throw p1
.end method

.method public setFactoryEncoding(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11496
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11498
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11499
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11500
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryEncoding(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11503
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11508
    throw p1
.end method

.method public setFactoryFMDistant(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7753
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7755
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7756
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7757
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryFMDistant(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7760
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7765
    throw p1
.end method

.method public setFactoryFMLocal(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7706
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7707
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7708
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7709
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7710
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryFMLocal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7713
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7718
    throw p1
.end method

.method public setFactoryLcdDriveConfig(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11408
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11409
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11410
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x126

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11411
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11412
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryLcdDriveConfig(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11415
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11420
    throw p1
.end method

.method public setFactoryLoadDefault(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8335
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 8336
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8337
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8338
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8339
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryLoadDefault(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8342
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8347
    throw p1
.end method

.method public setFactoryLvdsDisplayDriverCurrentLevel(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11221
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11223
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11224
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11225
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryLvdsDisplayDriverCurrentLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11228
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11233
    throw p1
.end method

.method public setFactoryPanelType(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6535
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6536
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6537
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6538
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6539
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryPanelType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6545
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6542
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6545
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6545
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6547
    throw p1
.end method

.method public setFactoryRDSType(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7659
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7660
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7661
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7662
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7663
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryRDSType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7666
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7671
    throw p1
.end method

.method public setFactoryRadioArea(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7553
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7555
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7556
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7557
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryRadioArea(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7560
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7565
    throw p1
.end method

.method public setFactoryRadioModel(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7606
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7608
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7609
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7610
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryRadioModel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7613
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7618
    throw p1
.end method

.method public setFactorySettingInfoToMcu([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4976
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4977
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4978
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4979
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4980
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactorySettingInfoToMcu([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4983
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4988
    throw p1
.end method

.method public setFactorySystemAutodimmerfunc(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8219
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 8220
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8221
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x97

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8222
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8223
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactorySystemAutodimmerfunc(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8226
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8231
    throw p1
.end method

.method public setFactorySystemBrakeoverride(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8258
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 8259
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8260
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x99

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8261
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8262
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactorySystemBrakeoverride(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8265
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8270
    throw p1
.end method

.method public setFactorySystemMechaback(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8297
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 8298
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8299
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8300
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8301
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactorySystemMechaback(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8304
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8309
    throw p1
.end method

.method public setFactorySystemRegioncode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7908
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7910
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7911
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7912
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactorySystemRegioncode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7915
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7920
    throw p1
.end method

.method public setFactorySystemTVArea(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7973
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7975
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7976
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7977
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactorySystemTVArea(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7980
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7985
    throw p1
.end method

.method public setFactoryT8AVOUT_Display(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8156
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8158
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8159
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8160
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryT8AVOUT_Display(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8163
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8168
    throw p1
.end method

.method public setFactoryTFTMotorteststart(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8316
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 8317
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8318
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8319
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8320
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFactoryTFTMotorteststart(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8323
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8328
    throw p1
.end method

.method public setFadeBalance(IIII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8516
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8517
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8518
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8519
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8520
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8521
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8522
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8523
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFadeBalance(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8526
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8531
    throw p1
.end method

.method public setFastCharging(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10704
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10705
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10706
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x104

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10707
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10708
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFastCharging(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10711
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10716
    throw p1
.end method

.method public setFastChargingisSupport(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10745
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10746
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10747
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x106

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10748
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10749
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFastChargingisSupport(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10752
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10757
    throw p1
.end method

.method public setFrontCameraMode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6086
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6087
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6088
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6089
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6090
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setFrontCameraMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6093
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6098
    throw p1
.end method

.method public setHdmiDisplayerResolution(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10869
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10870
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10871
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10872
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10873
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setHdmiDisplayerResolution(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10876
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10881
    throw p1
.end method

.method public setHeadlightSwitch(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5132
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5133
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5134
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5135
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5136
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setHeadlightSwitch(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5139
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5144
    throw p1
.end method

.method public setHostPowerAmp(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11180
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 11181
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11182
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11183
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11184
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setHostPowerAmp(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11187
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11192
    throw p1
.end method

.method public setHourMode(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6382
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 6383
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6384
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6385
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6386
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setHourMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6389
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6394
    throw p1
.end method

.method public setIsSoundMix(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4637
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4638
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4639
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4640
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4641
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setIsSoundMix(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4644
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4649
    throw p1
.end method

.method public setKeyColor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6180
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6182
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6183
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6184
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setKeyColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6187
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6192
    throw p1
.end method

.method public setKeyDebug(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7494
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 7495
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7496
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7497
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7498
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setKeyDebug(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7501
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7506
    throw p1
.end method

.method public setLoudness(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8613
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 8614
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8615
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8616
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8617
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setLoudness(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8620
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8625
    throw p1
.end method

.method public setMediaGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10070
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10071
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10072
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10073
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10074
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setMediaGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10077
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10082
    throw p1
.end method

.method public setNaviGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10140
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10141
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10142
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10143
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10144
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setNaviGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10147
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10152
    throw p1
.end method

.method public setNavigationModule(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6288
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6290
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6291
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6292
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setNavigationModule(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6295
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6300
    throw p1
.end method

.method public setNetworkLicense(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10440
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10441
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 10442
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10443
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10444
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setNetworkLicense(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10447
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10452
    throw p1
.end method

.method public setPanoramicCameraSwitch(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5312
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5313
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5314
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5315
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5316
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setPanoramicCameraSwitch(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5319
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5324
    throw p1
.end method

.method public setParking(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7331
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 7332
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7333
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7334
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7335
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setParking(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7338
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7343
    throw p1
.end method

.method public setPowerKeySwitch(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5357
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5358
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5359
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5360
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5361
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setPowerKeySwitch(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5364
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5369
    throw p1
.end method

.method public setRadioGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7239
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7241
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7242
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7243
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setRadioGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7246
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7251
    throw p1
.end method

.method public setRadioRange(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6488
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 6489
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6490
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x50

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6491
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6492
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setRadioRange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6495
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6500
    throw p1
.end method

.method public setReversingBaseline(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5267
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5268
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5269
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5270
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5271
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setReversingBaseline(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5274
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5279
    throw p1
.end method

.method public setReversingMute(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5222
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5223
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5224
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5225
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5226
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setReversingMute(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5229
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5234
    throw p1
.end method

.method public setReversingTrackSwitch(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5177
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5178
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5179
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5180
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5181
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setReversingTrackSwitch(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5184
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5189
    throw p1
.end method

.method public setSWCLearnLevel(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11242
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11244
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11245
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11246
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSWCLearnLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11249
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11254
    throw p1
.end method

.method public setScreenreverse(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8043
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 8044
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8045
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8046
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8047
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setScreenreverse(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8050
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8055
    throw p1
.end method

.method public setSharedBool(Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4909
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4910
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4911
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4912
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4913
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4914
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSharedBool(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4917
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4920
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4922
    throw p1
.end method

.method public setSharedInt(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4884
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4886
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4887
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4888
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4889
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4890
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4891
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSharedInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4894
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4899
    throw p1
.end method

.method public setSharedStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4932
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4933
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4934
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4935
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4936
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4937
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSharedStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4940
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4945
    throw p1
.end method

.method public setSharedValueToMpu()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4955
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4956
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4957
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4958
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSharedValueToMpu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4961
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 4964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4966
    throw v2
.end method

.method public setShutDownDelayTimeAccOff(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9920
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 9922
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9923
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9924
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setShutDownDelayTimeAccOff(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9927
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9932
    throw p1
.end method

.method public setSoundMixScale(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8871
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8872
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8873
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8874
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8875
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSoundMixScale(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8878
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8883
    throw p1
.end method

.method public setSubSwitch(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6606
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 6607
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6608
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6609
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6610
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSubSwitch(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6613
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6618
    throw p1
.end method

.method public setSubWFilter(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 6659
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6660
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6661
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6662
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6663
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSubWFilter(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 6666
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 6669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6671
    throw p1
.end method

.method public setSubWGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 8566
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8567
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8568
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8569
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8570
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setSubWGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 8573
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 8576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8578
    throw p1
.end method

.method public setTVOutGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5689
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5690
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5691
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5692
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5693
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setTVOutGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5696
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5701
    throw p1
.end method

.method public setTpmsPlaying(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9881
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 9882
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9883
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xdd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9884
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9885
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setTpmsPlaying(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9888
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9893
    throw p1
.end method

.method public setVcom([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10401
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 10403
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10404
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10405
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setVcom([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10408
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10413
    throw p1
.end method

.method public setVideoChipN3ChannelType(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 10828
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10829
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10830
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10831
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10832
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10833
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setVideoChipN3ChannelType(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 10836
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 10839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10841
    throw p1
.end method

.method public setVideoInput(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5485
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5486
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5487
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5488
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5489
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setVideoInput(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5492
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5497
    throw p1
.end method

.method public setVideoOutGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5638
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5639
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5640
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5641
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5642
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setVideoOutGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5645
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5650
    throw p1
.end method

.method public setVideoOutput(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 5536
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5538
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5539
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5540
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setVideoOutput(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 5543
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 5546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5548
    throw p1
.end method

.method public setXmGain(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 7098
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7099
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7100
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7101
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7102
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setXmGain(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 7105
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 7108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7110
    throw p1
.end method

.method public setreverse_exit_mcudelaytime_settings(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 11118
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11120
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x118

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11121
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11122
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setreverse_exit_mcudelaytime_settings(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 11125
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 11128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11130
    throw p1
.end method

.method public startSWCSample(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9511
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 9513
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9514
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9515
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->startSWCSample(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9518
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9523
    throw p1
.end method

.method public unRegisterAutoTestCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9692
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 9693
    invoke-interface {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9694
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9695
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9696
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->unRegisterAutoTestCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IAutoTestCallBackInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9699
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9704
    throw p1
.end method

.method public unRegisterCallBack(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 4686
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4687
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4688
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4689
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4690
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->unRegisterCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 4693
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 4696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4698
    throw p1
.end method

.method public unRegisterSWCCallBack(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISettingInterface"

    .line 9642
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9644
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9645
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9646
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->unRegisterSWCCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 9649
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 9652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9654
    throw p1
.end method
