.class public Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;
.super Ljava/lang/Object;
.source "UiA2dpDoCallback.java"


# static fields
.field private static final D:Z = false

.field public static final ERROR_EXCEPTION_ON_CALLBACK:Ljava/lang/String; = "Exception on AIDL callback !!! Total number of clients = "

.field private static final TAG:Ljava/lang/String; = "Service_A2dpDoCallback"


# instance fields
.field private mA2dpCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lnfore/android/bt/servicemanager/UiA2dpCallback;",
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
            "Lnfore/android/bt/servicemanager/UiA2dpCallback;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Service_A2dpDoCallback"

    const-string v1, "UiA2dpDoCallback() init"

    .line 22
    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public declared-synchronized onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 6

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 37
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onA2dpStateChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 39
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

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 44
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 44
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

.method public declared-synchronized onAvrcpBrowsingStateChanged(Ljava/lang/String;II)V
    .locals 6

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 79
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpBrowsingStateChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 81
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

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 86
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 86
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

.method public declared-synchronized onAvrcpErrorResponse(Ljava/lang/String;IIB)V
    .locals 6

    monitor-enter p0

    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 890
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 894
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpErrorResponse(Ljava/lang/String;IIB)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 896
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

    .line 900
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 901
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 903
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 901
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

.method public declared-synchronized onAvrcpEventAddressedPlayerChanged(Ljava/lang/String;II)V
    .locals 6

    monitor-enter p0

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 621
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 625
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventAddressedPlayerChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 627
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

    .line 631
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 632
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 634
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 632
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

.method public declared-synchronized onAvrcpEventAvailablePlayerChanged(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 599
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 603
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventAvailablePlayerChanged(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 605
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

    .line 609
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 610
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 612
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 610
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

.method public declared-synchronized onAvrcpEventBatteryStatusChanged(Ljava/lang/String;B)V
    .locals 6

    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 390
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventBatteryStatusChanged(Ljava/lang/String;B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 392
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

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 397
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 399
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 397
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

.method public declared-synchronized onAvrcpEventNowPlayingContentChanged(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 577
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 581
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventNowPlayingContentChanged(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 583
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

    .line 587
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 588
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 590
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 588
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

.method public declared-synchronized onAvrcpEventPlaybackPosChanged(Ljava/lang/String;J)V
    .locals 6

    monitor-enter p0

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 368
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventPlaybackPosChanged(Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 370
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

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 375
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 375
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

.method public declared-synchronized onAvrcpEventPlaybackStatusChanged(Ljava/lang/String;B)V
    .locals 6

    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 280
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventPlaybackStatusChanged(Ljava/lang/String;B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 282
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

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 287
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 287
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

.method public declared-synchronized onAvrcpEventPlayerSettingChanged(Ljava/lang/String;[B[B)V
    .locals 6

    monitor-enter p0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_2

    .line 433
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 435
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 439
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventPlayerSettingChanged(Ljava/lang/String;[B[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 441
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

    .line 445
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 446
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 446
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

    .line 430
    :cond_2
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onAvrcpEventSystemStatusChanged(Ljava/lang/String;B)V
    .locals 6

    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 408
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 412
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventSystemStatusChanged(Ljava/lang/String;B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 414
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

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 419
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 419
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

.method public declared-synchronized onAvrcpEventTrackChanged(Ljava/lang/String;J)V
    .locals 6

    monitor-enter p0

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 302
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventTrackChanged(Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 304
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

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 309
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 309
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

.method public declared-synchronized onAvrcpEventTrackReachedEnd(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 320
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 324
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventTrackReachedEnd(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 326
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

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 331
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 331
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

.method public declared-synchronized onAvrcpEventTrackReachedStart(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 342
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 346
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventTrackReachedStart(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 348
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

    .line 352
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 353
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 353
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

.method public declared-synchronized onAvrcpEventUidsChanged(Ljava/lang/String;I)V
    .locals 6

    monitor-enter p0

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 643
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 647
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventUidsChanged(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 649
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

    .line 653
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 654
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 656
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 654
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

.method public declared-synchronized onAvrcpEventVolumeChanged(Ljava/lang/String;B)V
    .locals 6

    monitor-enter p0

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 665
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 669
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpEventVolumeChanged(Ljava/lang/String;B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 671
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

    .line 675
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 676
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 678
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 676
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

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 57
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->onAvrcpStateChanged(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 59
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

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 64
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 64
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

.method public declared-synchronized retAvrcpAbsoluteVolumeSet(Ljava/lang/String;B)V
    .locals 6

    monitor-enter p0

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 868
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 872
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpAbsoluteVolumeSet(Ljava/lang/String;B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 874
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

    .line 878
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 879
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 881
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 879
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

.method public declared-synchronized retAvrcpAddressedPlayerSet(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 687
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 691
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpAddressedPlayerSet(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 693
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

    .line 697
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 698
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 700
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 698
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

.method public declared-synchronized retAvrcpBatteryStatusOfCtInformed(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 555
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 559
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpBatteryStatusOfCtInformed(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 561
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

    .line 565
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 566
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 568
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 566
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

.method public declared-synchronized retAvrcpBrowsedPlayerSet(Ljava/lang/String;IJ)V
    .locals 6

    monitor-enter p0

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 709
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 713
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpBrowsedPlayerSet(Ljava/lang/String;IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 715
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

    .line 719
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 720
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 722
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 720
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

.method public declared-synchronized retAvrcpCapabilitiesSupportEvent(Ljava/lang/String;[B)V
    .locals 6

    monitor-enter p0

    if-nez p2, :cond_0

    .line 97
    monitor-exit p0

    return-void

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 106
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpCapabilitiesSupportEvent(Ljava/lang/String;[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 108
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

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 113
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 113
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

.method public declared-synchronized retAvrcpDisplayableCharsetInformed(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 533
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 537
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpDisplayableCharsetInformed(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 539
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

    .line 543
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 544
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 546
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 544
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

.method public declared-synchronized retAvrcpElementAttributesPlaying(Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_2

    .line 230
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 236
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpElementAttributesPlaying(Ljava/lang/String;[I[Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 238
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

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 243
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 243
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

    .line 227
    :cond_2
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized retAvrcpFolderItems(Ljava/lang/String;IJ)V
    .locals 6

    monitor-enter p0

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 731
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 735
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpFolderItems(Ljava/lang/String;IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 737
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

    .line 741
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 742
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 744
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 742
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

.method public declared-synchronized retAvrcpItemAttributes(Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_2

    .line 778
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 780
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 784
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpItemAttributes(Ljava/lang/String;[I[Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 786
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

    .line 790
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 791
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 793
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 791
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

    .line 775
    :cond_2
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized retAvrcpMetadataReceivingAborted(Ljava/lang/String;I)V
    .locals 6

    monitor-enter p0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 457
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 461
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpMetadataReceivingAborted(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 463
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

    .line 467
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 468
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 468
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

.method public declared-synchronized retAvrcpNowPlayingAdded(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 846
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 850
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpNowPlayingAdded(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 852
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

    .line 856
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 857
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 857
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

.method public declared-synchronized retAvrcpPathChanged(Ljava/lang/String;J)V
    .locals 6

    monitor-enter p0

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 753
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 757
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPathChanged(Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 759
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

    .line 763
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 764
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 766
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 764
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

.method public declared-synchronized retAvrcpPlayStatus(Ljava/lang/String;JJB)V
    .locals 12

    move-object v1, p0

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v2, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    iget-object v0, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 258
    :try_start_2
    iget-object v4, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    move-object v6, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    move/from16 v11, p6

    invoke-interface/range {v5 .. v11}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayStatus(Ljava/lang/String;JJB)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v4, "Service_A2dpDoCallback"

    .line 260
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

    .line 264
    :cond_0
    iget-object v0, v1, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 265
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 265
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

.method public declared-synchronized retAvrcpPlayerSettingAttributeText(Ljava/lang/String;IB[B)V
    .locals 6

    monitor-enter p0

    if-nez p4, :cond_0

    .line 479
    monitor-exit p0

    return-void

    .line 482
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 484
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 488
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayerSettingAttributeText(Ljava/lang/String;IB[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 490
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

    .line 494
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 495
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 495
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

.method public declared-synchronized retAvrcpPlayerSettingAttributesList(Ljava/lang/String;[B)V
    .locals 6

    monitor-enter p0

    if-nez p2, :cond_0

    .line 124
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 133
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayerSettingAttributesList(Ljava/lang/String;[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 135
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

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 140
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 140
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

.method public declared-synchronized retAvrcpPlayerSettingCurrentValues(Ljava/lang/String;[B[B)V
    .locals 6

    monitor-enter p0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_2

    .line 181
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 187
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayerSettingCurrentValues(Ljava/lang/String;[B[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 189
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

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 194
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 194
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

    .line 178
    :cond_2
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized retAvrcpPlayerSettingValueSet(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 205
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 209
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayerSettingValueSet(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 211
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

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 216
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 216
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

.method public declared-synchronized retAvrcpPlayerSettingValueText(Ljava/lang/String;IB[B)V
    .locals 6

    monitor-enter p0

    if-nez p4, :cond_0

    .line 506
    monitor-exit p0

    return-void

    .line 509
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 511
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 515
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayerSettingValueText(Ljava/lang/String;IB[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 517
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

    .line 521
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 522
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 522
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

.method public declared-synchronized retAvrcpPlayerSettingValuesList(Ljava/lang/String;B[B)V
    .locals 6

    monitor-enter p0

    if-nez p3, :cond_0

    .line 151
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 160
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpPlayerSettingValuesList(Ljava/lang/String;B[B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 162
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

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 167
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 167
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

.method public declared-synchronized retAvrcpSearchResult(Ljava/lang/String;IJ)V
    .locals 6

    monitor-enter p0

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 824
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 828
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpSearchResult(Ljava/lang/String;IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 830
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

    .line 834
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 835
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 837
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 835
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

.method public declared-synchronized retAvrcpSelectedItemPlayed(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 802
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 806
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpSelectedItemPlayed(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 808
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

    .line 812
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 813
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 815
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 813
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

.method public declared-synchronized retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 911
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 915
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    invoke-interface {v3, p1, p2, p3}, Lnfore/android/bt/servicemanager/UiA2dpCallback;->retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v3, "Service_A2dpDoCallback"

    .line 917
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

    .line 921
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/UiA2dpDoCallback;->mA2dpCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 922
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 924
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 922
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
