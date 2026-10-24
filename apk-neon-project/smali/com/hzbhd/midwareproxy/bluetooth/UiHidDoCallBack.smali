.class public Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;
.super Ljava/lang/Object;
.source "UiHidDoCallBack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiHidDoCallBack"

.field public static final TIMER_CHECK_CALLBACK_MS:I = 0x12c


# instance fields
.field private mHidCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lnfore/android/bt/servicemanager/UiHidCallback;",
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
            "Lnfore/android/bt/servicemanager/UiHidCallback;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UiHidDoCallBack"

    const-string v1, "HidDoCallBack()"

    .line 19
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public declared-synchronized onAuthStateChanged(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "UiHidDoCallBack"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "UiHidDoCallBack"

    const-string v2, "onAuthStateChanged beginBroadcast()"

    .line 100
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 105
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHidCallback;

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiHidCallback;->onAuthStateChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 107
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 111
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "UiHidDoCallBack"

    const-string v0, "onAuthStateChanged CallBack Finish."

    .line 112
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 111
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

.method public declared-synchronized onHidStateChanged(Ljava/lang/String;III)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "UiHidDoCallBack"

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHidStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "UiHidDoCallBack"

    const-string v2, "onHidStateChanged beginBroadcast()"

    .line 26
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const-string v2, "UiHidDoCallBack"

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHidStateChanged beginBroadcast() N = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 32
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHidCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiHidCallback;->onHidStateChanged(Ljava/lang/String;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 34
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 38
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "UiHidDoCallBack"

    const-string p2, "onHidStateChanged CallBack Finish."

    .line 39
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 38
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

.method public declared-synchronized onScreenModeChanged(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "UiHidDoCallBack"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenModeChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "UiHidDoCallBack"

    const-string v2, "onScreenModeChanged beginBroadcast()"

    .line 82
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 87
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHidCallback;

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiHidCallback;->onScreenModeChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 89
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 93
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "UiHidDoCallBack"

    const-string v0, "onScreenModeChanged CallBack Finish."

    .line 94
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 93
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

.method public declared-synchronized onScreenStateChanged(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "UiHidDoCallBack"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "UiHidDoCallBack"

    const-string v2, "onScreenStateChanged beginBroadcast()"

    .line 64
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 69
    :try_start_2
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnfore/android/bt/servicemanager/UiHidCallback;

    invoke-interface {v2, p1}, Lnfore/android/bt/servicemanager/UiHidCallback;->onScreenStateChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 71
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHidDoCallBack;->mHidCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 75
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "UiHidDoCallBack"

    const-string v0, "onScreenStateChanged CallBack Finish."

    .line 76
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 75
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
