.class public Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;
.super Ljava/lang/Object;
.source "UiHspDoCallBack.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "UiHspDoCallBack"


# instance fields
.field private mHspCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lnfore/android/bt/servicemanager/UiHspCallback;",
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
            "Lnfore/android/bt/servicemanager/UiHspCallback;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UiHspDoCallBack"

    const-string v1, "UiHspDoCallBack()"

    .line 18
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public declared-synchronized onHspErrorResponse(Ljava/lang/String;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "UiHspDoCallBack"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHspErrorResponse() : ErrorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "UiHspDoCallBack"

    const-string v2, "onHspErrorResponse beginBroadcast()"

    .line 59
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 63
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiHspCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiHspCallback;->onHspErrorResponse(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 65
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 69
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "UiHspDoCallBack"

    const-string p2, "onHspErrorResponse CallBack Finish."

    .line 70
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 69
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

.method public declared-synchronized onHspMicVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "UiHspDoCallBack"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHspMicVolumeChanged() : VolumeGain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "UiHspDoCallBack"

    const-string v2, "onHspMicVolumeChanged beginBroadcast()"

    .line 93
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 97
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiHspCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiHspCallback;->onHspMicVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 99
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 103
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "UiHspDoCallBack"

    const-string p2, "onHspMicVolumeChanged CallBack Finish."

    .line 104
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 103
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

.method public declared-synchronized onHspNewIncomingCall(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "UiHspDoCallBack"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHspNewIncomingCall() : address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "UiHspDoCallBack"

    const-string v2, "onHspNewIncomingCall beginBroadcast()"

    .line 77
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 81
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiHspCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiHspCallback;->onHspNewIncomingCall(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    :try_start_3
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 86
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "UiHspDoCallBack"

    const-string v0, "onHspNewIncomingCall CallBack Finish."

    .line 87
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 86
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

.method public declared-synchronized onHspScoStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "UiHspDoCallBack"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHspScoStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deviceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "UiHspDoCallBack"

    const-string v2, "onHspScoStateChanged beginBroadcast()"

    .line 42
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 46
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiHspCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiHspCallback;->onHspScoStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 48
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 52
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "UiHspDoCallBack"

    const-string p2, "onHspScoStateChanged CallBack Finish."

    .line 53
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 52
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

.method public declared-synchronized onHspSpeakerVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "UiHspDoCallBack"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHspSpeakerVolumeChanged() : VolumeGain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "UiHspDoCallBack"

    const-string v2, "onHspSpeakerVolumeChanged beginBroadcast()"

    .line 110
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 114
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiHspCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiHspCallback;->onHspSpeakerVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 116
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 120
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "UiHspDoCallBack"

    const-string p2, "onHspSpeakerVolumeChanged CallBack Finish."

    .line 121
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 120
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

.method public declared-synchronized onHspStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "UiHspDoCallBack"

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHspStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deviceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "UiHspDoCallBack"

    const-string v2, "onHspStateChanged beginBroadcast()"

    .line 25
    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 29
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiHspCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiHspCallback;->onHspStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 31
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiHspDoCallBack;->mHspCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 35
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "UiHspDoCallBack"

    const-string p2, "onHspStateChanged CallBack Finish."

    .line 36
    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 35
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
