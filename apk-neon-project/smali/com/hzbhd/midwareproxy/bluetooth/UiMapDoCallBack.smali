.class public Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;
.super Ljava/lang/Object;
.source "UiMapDoCallBack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Service_MapDoCallBack"

.field public static final TIMER_CHECK_CALLBACK_MS:I = 0x12c


# instance fields
.field private mMapCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lnfore/android/bt/servicemanager/UiMapCallback;",
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
            "Lnfore/android/bt/servicemanager/UiMapCallback;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Service_MapDoCallBack"

    const-string v1, "UiMapDoCallBack()"

    .line 19
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public declared-synchronized onMapDownloadNotify(Ljava/lang/String;II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Service_MapDoCallBack"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMapDownloadNotify() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " DownloadNotify : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "Service_MapDoCallBack"

    const-string v2, "onMapDownloadNotify beginBroadcast()"

    .line 63
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 68
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiMapCallback;

    invoke-interface {v2, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiMapCallback;->onMapDownloadNotify(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 70
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 74
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "Service_MapDoCallBack"

    const-string p2, "onMapDownloadNotify CallBack Finish."

    .line 75
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 74
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

.method public declared-synchronized onMapNewMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Service_MapDoCallBack"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMapNewMessageReceived() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sender : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "Service_MapDoCallBack"

    const-string v2, "onMapNewMessageReceived beginBroadcast()"

    .line 45
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 50
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiMapCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiMapCallback;->onMapNewMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 52
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 56
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "Service_MapDoCallBack"

    const-string p2, "onMapNewMessageReceived CallBack Finish."

    .line 57
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 56
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

.method public declared-synchronized onMapNotificationStateChanged(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "Service_MapDoCallBack"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMapNotificationStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "Service_MapDoCallBack"

    const-string v2, "onMapNotificationStateChanged beginBroadcast()"

    .line 101
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 106
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lnfore/android/bt/servicemanager/UiMapCallback;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lnfore/android/bt/servicemanager/UiMapCallback;->onMapNotificationStateChanged(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 108
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 112
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "Service_MapDoCallBack"

    const-string p2, "onMapNotificationStateChanged CallBack Finish."

    .line 113
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 112
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

.method public declared-synchronized onMapStateChanged(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 13

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    const-string v0, "Service_MapDoCallBack"

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMapStateChanged() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newState "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "Service_MapDoCallBack"

    const-string v4, "onMapStateChanged beginBroadcast()"

    .line 27
    invoke-static {v0, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v12, v0, -0x1

    .line 32
    :try_start_2
    iget-object v0, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lnfore/android/bt/servicemanager/UiMapCallback;

    move-object v5, p1

    move-object v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lnfore/android/bt/servicemanager/UiMapCallback;->onMapStateChanged(Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 34
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    move v0, v12

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 38
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "Service_MapDoCallBack"

    const-string v2, "onMapStateChanged CallBack Finish."

    .line 39
    invoke-static {v0, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 38
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized retMapCleanDatabaseCompleted(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Service_MapDoCallBack"

    const-string/jumbo v1, "retMapCleanDatabaseCompleted()"

    .line 117
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "Service_MapDoCallBack"

    const-string/jumbo v2, "retMapCleanDatabaseCompleted beginBroadcast()"

    .line 119
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 124
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiMapCallback;

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiMapCallback;->retMapCleanDatabaseCompleted(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 126
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 130
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "Service_MapDoCallBack"

    const-string/jumbo v0, "retMapCleanDatabaseCompleted CallBack Finish."

    .line 131
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 130
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

.method public declared-synchronized retMapDatabaseAvailable(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Service_MapDoCallBack"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retMapDatabaseAvailable() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "Service_MapDoCallBack"

    const-string/jumbo v2, "retMapDatabaseAvailable beginBroadcast()"

    .line 83
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 88
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiMapCallback;

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiMapCallback;->retMapDatabaseAvailable(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 90
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 94
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "Service_MapDoCallBack"

    const-string/jumbo v0, "retMapDatabaseAvailable CallBack Finish."

    .line 95
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 94
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

.method public declared-synchronized retMapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Service_MapDoCallBack"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retMapDeleteDatabaseByAddressCompleted() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "Service_MapDoCallBack"

    const-string/jumbo v2, "retMapDeleteDatabaseByAddressCompleted beginBroadcast()"

    .line 137
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 142
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiMapCallback;

    invoke-interface {v2, p1, p2}, Lnfore/android/bt/servicemanager/UiMapCallback;->retMapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 144
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiMapDoCallBack;->mMapCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 148
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "Service_MapDoCallBack"

    const-string/jumbo p2, "retMapDeleteDatabaseByAddressCompleted CallBack Finish."

    .line 149
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 150
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 148
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
