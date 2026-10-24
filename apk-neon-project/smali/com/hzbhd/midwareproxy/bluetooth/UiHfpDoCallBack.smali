.class public Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;
.super Ljava/lang/Object;
.source "UiHfpDoCallBack.java"


# static fields
.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "Service_HfpDoCallBack"


# instance fields
.field private mHfpCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lnfore/android/bt/servicemanager/UiHfpCallback;",
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
            "Lnfore/android/bt/servicemanager/UiHfpCallback;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Service_HfpDoCallBack"

    const-string v1, "UiHfpDoCallBack() init"

    .line 23
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public declared-synchronized onHfpActiveNumberChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 434
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 438
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpActiveNumberChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 440
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 444
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 444
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

.method public declared-synchronized onHfpAtDownloadPhonebookStateChanged(Ljava/lang/String;II)V
    .locals 3

    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 259
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 263
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpAtDownloadPhonebookStateChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 265
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 269
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 269
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

.method public declared-synchronized onHfpAtDownloadSMSStateChanged(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 282
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpAtDownloadSMSStateChanged(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 284
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 288
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 288
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

.method public declared-synchronized onHfpCallStateChanged(Ljava/lang/String;II)V
    .locals 3

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 54
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpCallStateChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 56
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 61
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 61
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

.method public declared-synchronized onHfpErrorResponse(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpErrorInfo;)V
    .locals 3

    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 225
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpErrorResponse(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpErrorInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 227
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 231
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 231
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

.method public declared-synchronized onHfpIncomingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 380
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 384
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpIncomingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 386
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 389
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 390
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 390
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

.method public declared-synchronized onHfpMicSelectionChanged(Ljava/lang/String;II)V
    .locals 3

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 92
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpMicSelectionChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 94
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 99
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 99
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

.method public declared-synchronized onHfpMicVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 111
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpMicVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 113
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 117
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 117
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

.method public declared-synchronized onHfpMuteStateChanged(Ljava/lang/String;II)V
    .locals 3

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 73
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpMuteStateChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 75
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 80
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 80
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

.method public declared-synchronized onHfpOutgoingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 398
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 402
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpOutgoingCallNumber(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 404
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 408
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 410
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 408
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

.method public declared-synchronized onHfpRemoteDeviceBatteryStatusChanged(Ljava/lang/String;IIII)V
    .locals 9

    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 302
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 306
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lnfore/android/bt/servicemanager/UiHfpCallback;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpRemoteDeviceBatteryStatusChanged(Ljava/lang/String;IIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 308
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 312
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 312
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

.method public declared-synchronized onHfpRemoteDevicePhoneNumberChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnfore/android/bt/servicemanager/HfpPhoneNumberInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 205
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpRemoteDevicePhoneNumberChanged(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 207
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 211
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 211
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

.method public declared-synchronized onHfpRemoteDeviceRoamStatusChanged(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 362
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 366
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpRemoteDeviceRoamStatusChanged(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 368
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 372
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 372
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

.method public declared-synchronized onHfpRemoteDeviceServiceStatusChanged(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 344
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 348
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpRemoteDeviceServiceStatusChanged(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 350
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 354
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 354
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

.method public declared-synchronized onHfpRemoteDeviceSignalStatusChanged(Ljava/lang/String;IIII)V
    .locals 9

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 330
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lnfore/android/bt/servicemanager/UiHfpCallback;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpRemoteDeviceSignalStatusChanged(Ljava/lang/String;IIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 332
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 336
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 336
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

.method public declared-synchronized onHfpScoStateChanged(Ljava/lang/String;II)V
    .locals 3

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 240
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 244
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpScoStateChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 246
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 250
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 250
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

.method public declared-synchronized onHfpSpeakerVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 129
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpSpeakerVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 131
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 135
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 135
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
    .locals 3

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 35
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpStateChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 37
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 42
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 42
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

.method public declared-synchronized onHfpVoiceControlStateChanged(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 452
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 456
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiHfpCallback;->onHfpVoiceControlStateChanged(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 458
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 461
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 462
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 462
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

.method public declared-synchronized retHfpRemoteDeviceInfo(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpStatusInfo;)V
    .locals 3

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 148
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiHfpCallback;->retHfpRemoteDeviceInfo(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpStatusInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 150
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 154
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 154
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

.method public declared-synchronized retHfpRemoteDeviceNetworkOperator(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 167
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiHfpCallback;->retHfpRemoteDeviceNetworkOperator(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 169
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 173
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 173
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

.method public declared-synchronized retHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 185
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiHfpCallback;->retHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 187
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 191
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 191
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

.method public declared-synchronized retPbapQueryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 416
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 420
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHfpCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiHfpCallback;->retPbapQueryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 422
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHfpDoCallBack;->mHfpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 426
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 426
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
