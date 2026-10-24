.class public Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;
.super Ljava/lang/Object;
.source "UiServiceDoCallBack.java"


# static fields
.field private static final D:Z = false

.field public static final ERROR_EXCEPTION_ON_CALLBACK:Ljava/lang/String; = "Exception on AIDL callback !!! Total number of clients = "

.field private static final TAG:Ljava/lang/String; = "Service_ServiceDoCallBack"


# instance fields
.field private mServiceCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lnfore/android/bt/servicemanager/UiServiceCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/RemoteCallbackList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lnfore/android/bt/servicemanager/UiServiceCallback;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Service_ServiceDoCallBack"

    const-string v1, "UiServiceDoCallBack() init"

    .line 22
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public declared-synchronized onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 6

    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 285
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 289
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiServiceCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onA2dpStateChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 296
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 296
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onAdapterStateChanged(I)V
    .locals 6

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 157
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiServiceCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onAdapterStateChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 164
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 164
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 6

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 306
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 310
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiServiceCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onAvrcpStateChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 317
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 317
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDeviceFound(Ljava/lang/String;Ljava/lang/String;BZ)V
    .locals 6

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 135
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiServiceCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onDeviceFound(Ljava/lang/String;Ljava/lang/String;BZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 142
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 142
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDevicePairFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 223
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiServiceCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onDevicePairFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 230
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 230
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDevicePaired(Ljava/lang/String;Ljava/lang/String;IB)V
    .locals 6

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 179
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiServiceCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onDevicePaired(Ljava/lang/String;Ljava/lang/String;IB)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 186
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 186
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDeviceUnpaired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 201
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiServiceCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onDeviceUnpaired(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 208
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 208
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDeviceUuidsGot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 245
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiServiceCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onDeviceUuidsGot(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 252
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 252
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onHfpStateChanged(Ljava/lang/String;II)V
    .locals 6

    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 267
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiServiceCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onHfpStateChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 274
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 274
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSecureSimplePairingRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 328
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 332
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiServiceCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onSecureSimplePairingRequest(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 339
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 339
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceReady(I)V
    .locals 6

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 45
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiServiceCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiServiceCallback;->onServiceReady(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 52
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 52
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retBluetoothFoundDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 10

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 112
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lnfore/android/bt/servicemanager/UiServiceCallback;

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lnfore/android/bt/servicemanager/UiServiceCallback;->retBluetoothFoundDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 119
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 119
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retBluetoothPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 10

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 67
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lnfore/android/bt/servicemanager/UiServiceCallback;

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lnfore/android/bt/servicemanager/UiServiceCallback;->retBluetoothPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_ServiceDoCallBack"

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Current index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 74
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 74
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retBluetoothPairedDevicesExtend(I[Ljava/lang/String;[Ljava/lang/String;[I[B[Z[Z)V
    .locals 13

    move-object v1, p0

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :try_start_1
    iget-object v0, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 90
    :try_start_2
    iget-object v4, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lnfore/android/bt/servicemanager/UiServiceCallback;

    move v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-interface/range {v5 .. v12}, Lnfore/android/bt/servicemanager/UiServiceCallback;->retBluetoothPairedDevicesExtend(I[Ljava/lang/String;[Ljava/lang/String;[I[B[Z[Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v4, "Service_ServiceDoCallBack"

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception on AIDL callback !!! Total number of clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Current index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiServiceDoCallBack;->mServiceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 97
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 97
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
