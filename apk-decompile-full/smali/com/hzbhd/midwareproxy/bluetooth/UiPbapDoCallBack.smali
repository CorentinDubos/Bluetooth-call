.class public Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;
.super Ljava/lang/Object;
.source "UiPbapDoCallBack.java"


# static fields
.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "Service_PbapDoCallBack"

.field public static final TIMER_CHECK_CALLBACK_MS:I = 0x12c


# instance fields
.field private mPbapCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lnfore/android/bt/servicemanager/UiPbapCallback;",
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
            "Lnfore/android/bt/servicemanager/UiPbapCallback;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Service_PbapDoCallBack"

    const-string v1, "UiPbapDoCallBack()"

    .line 21
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public declared-synchronized onPbapDownloadNotify(Ljava/lang/String;III)V
    .locals 3

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 54
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiPbapCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiPbapCallback;->onPbapDownloadNotify(Ljava/lang/String;III)V
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

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 60
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 60
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

.method public declared-synchronized onPbapStateChanged(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 11

    move-object v1, p0

    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    iget-object v0, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v3, v0, -0x1

    .line 34
    :try_start_2
    iget-object v0, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lnfore/android/bt/servicemanager/UiPbapCallback;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lnfore/android/bt/servicemanager/UiPbapCallback;->onPbapStateChanged(Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 36
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    move v0, v3

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 40
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 40
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

.method public declared-synchronized retPbapCleanDatabaseCompleted(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Service_PbapDoCallBack"

    const-string/jumbo v1, "retPbapCleanDatabaseCompleted()"

    .line 122
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "Service_PbapDoCallBack"

    const-string/jumbo v2, "retPbapCleanDatabaseCompleted beginBroadcast()"

    .line 124
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 129
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiPbapCallback;

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiPbapCallback;->retPbapCleanDatabaseCompleted(Z)V
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
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 135
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "Service_PbapDoCallBack"

    const-string/jumbo v0, "retPbapCleanDatabaseCompleted CallBack Finish."

    .line 136
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 135
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retPbapDatabaseAvailable(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 93
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiPbapCallback;

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiPbapCallback;->retPbapDatabaseAvailable(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 95
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

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

.method public declared-synchronized retPbapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Service_PbapDoCallBack"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retPbapDeleteDatabaseByAddressCompleted() deletedAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "Service_PbapDoCallBack"

    const-string/jumbo v2, "retPbapDeleteDatabaseByAddressCompleted beginBroadcast()"

    .line 106
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 111
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiPbapCallback;

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiPbapCallback;->retPbapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V
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
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 117
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "Service_PbapDoCallBack"

    const-string/jumbo p2, "retPbapDeleteDatabaseByAddressCompleted CallBack Finish."

    .line 118
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 117
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retPbapQueryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 75
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiPbapCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiPbapCallback;->retPbapQueryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 77
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiPbapDoCallBack;->mPbapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 81
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 81
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
