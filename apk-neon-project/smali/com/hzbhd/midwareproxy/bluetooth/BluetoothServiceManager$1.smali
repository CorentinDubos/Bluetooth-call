.class Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;
.super Landroid/os/Handler;
.source "BluetoothServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;Landroid/os/Looper;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 348
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->values()[Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    .line 349
    sget-object v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$10;->$SwitchMap$com$hzbhd$midwareproxy$bluetooth$BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG:[I

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$BLUETOOTH_CALLBACK_MSG;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_b6

    .line 1114
    :pswitch_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1115
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 1116
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHspCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_0

    const-string v3, "00:00:00:00:00:00"

    goto :goto_1

    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHspCallbackListener;->onHspNewIncomingCall(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1118
    :cond_1
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1106
    :pswitch_2
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1107
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 1108
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHspCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_2

    const-string v3, "00:00:00:00:00:00"

    goto :goto_3

    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHspCallbackListener;->onHspErrorResponse(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1110
    :cond_3
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 1098
    :pswitch_3
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1099
    :goto_4
    :try_start_2
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1100
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHspCallbackListener;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_4

    const-string v4, "00:00:00:00:00:00"

    goto :goto_5

    :cond_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v1, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHspCallbackListener;->onHspScoStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1102
    :cond_5
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 1090
    :pswitch_4
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1091
    :goto_6
    :try_start_3
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 1092
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$700(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHspCallbackListener;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_6

    const-string v4, "00:00:00:00:00:00"

    goto :goto_7

    :cond_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v1, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHspCallbackListener;->onHspStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1094
    :cond_7
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    .line 1074
    :pswitch_5
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    move v1, v2

    .line 1075
    :goto_8
    :try_start_4
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 1076
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHidCallbackListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_8

    move v5, v2

    goto :goto_9

    :cond_8
    move v5, v3

    :goto_9
    invoke-interface {v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHidCallbackListener;->onAuthStateChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1078
    :cond_9
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_4
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    .line 1066
    :pswitch_6
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1067
    :goto_a
    :try_start_5
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    .line 1068
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHidCallbackListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHidCallbackListener;->onScreenModeChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1070
    :cond_a
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_5
    move-exception p1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    .line 1058
    :pswitch_7
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1059
    :goto_b
    :try_start_6
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_b

    .line 1060
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHidCallbackListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHidCallbackListener;->onScreenStateChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1062
    :cond_b
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_6
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    .line 1049
    :pswitch_8
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1050
    :goto_c
    :try_start_7
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_d

    const-string v1, "BluetoothServiceManager"

    const-string v3, "------onHidStateChanged(2)-------"

    .line 1051
    invoke-static {v1, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$600(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHidCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_c

    const-string v3, "00:00:00:00:00:00"

    goto :goto_d

    :cond_c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_d
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "hid_reason"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHidCallbackListener;->onHidStateChanged(Ljava/lang/String;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1054
    :cond_d
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    .line 1041
    :pswitch_9
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$500(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1042
    :goto_e
    :try_start_8
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$500(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_f

    .line 1043
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$500(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPanCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_e

    const-string v3, "00:00:00:00:00:00"

    goto :goto_f

    :cond_e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_f
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "pan_reason"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPanCallbackListener;->onPanStateChanged(Ljava/lang/String;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1045
    :cond_f
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw p1

    .line 1032
    :pswitch_a
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1033
    :goto_10
    :try_start_9
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_11

    .line 1035
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothSppCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_10

    const-string v3, "00:00:00:00:00:00"

    goto :goto_11

    :cond_10
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "spp_receivedData"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothSppCallbackListener;->onSppDataReceived(Ljava/lang/String;[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1037
    :cond_11
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw p1

    .line 1024
    :pswitch_b
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1025
    :goto_12
    :try_start_a
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_12

    .line 1026
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothSppCallbackListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "SppConnected_addressList"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "SppConnected_nameList"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothSppCallbackListener;->retSppConnectedDeviceAddressList(I[Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1028
    :cond_12
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw p1

    .line 1016
    :pswitch_c
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1017
    :goto_13
    :try_start_b
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_14

    .line 1018
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothSppCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_13

    const-string v3, "00:00:00:00:00:00"

    goto :goto_14

    :cond_13
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_14
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothSppCallbackListener;->onSppErrorResponse(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1020
    :cond_14
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw p1

    .line 1008
    :pswitch_d
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1009
    :goto_15
    :try_start_c
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_16

    .line 1010
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$400(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothSppCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_15

    const-string v3, "00:00:00:00:00:00"

    goto :goto_16

    :cond_15
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_16
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "SppState_deviceName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothSppCallbackListener;->onSppStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1012
    :cond_16
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw p1

    .line 1000
    :pswitch_e
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    move v1, v2

    .line 1001
    :goto_17
    :try_start_d
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_18

    .line 1002
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_17

    move v5, v3

    goto :goto_18

    :cond_17
    move v5, v2

    :goto_18
    invoke-interface {v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;->retPbapCleanDatabaseCompleted(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1004
    :cond_18
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw p1

    .line 992
    :pswitch_f
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    move v1, v2

    .line 993
    :goto_19
    :try_start_e
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1b

    .line 994
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_19

    const-string v5, "00:00:00:00:00:00"

    goto :goto_1a

    :cond_19
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1a
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_1a

    move v6, v3

    goto :goto_1b

    :cond_1a
    move v6, v2

    :goto_1b
    invoke-interface {v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;->retPbapDeleteDatabaseByAddressCompleted(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 996
    :cond_1b
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw p1

    .line 984
    :pswitch_10
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 985
    :goto_1c
    :try_start_f
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1d

    .line 986
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_1c

    const-string v3, "00:00:00:00:00:00"

    goto :goto_1d

    :cond_1c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Notify_phoneNumber"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "Notify_fullName"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "Notify_isSuccessed"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;->retPbapQueryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 988
    :cond_1d
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw p1

    .line 976
    :pswitch_11
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 977
    :goto_1e
    :try_start_10
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1f

    .line 978
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_1e

    const-string v3, "00:00:00:00:00:00"

    goto :goto_1f

    :cond_1e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1f
    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;->retPbapDatabaseAvailable(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 980
    :cond_1f
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw p1

    .line 968
    :pswitch_12
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 969
    :goto_20
    :try_start_11
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_21

    .line 970
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_20

    const-string v3, "00:00:00:00:00:00"

    goto :goto_21

    :cond_20
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_21
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "Notify_currentItems"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;->onPbapDownloadNotify(Ljava/lang/String;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 972
    :cond_21
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw p1

    .line 960
    :pswitch_13
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 961
    :goto_22
    :try_start_12
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_23

    .line 962
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$300(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_22

    const-string v1, "00:00:00:00:00:00"

    goto :goto_23

    :cond_22
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_23
    move-object v4, v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "PbapState_deviceName"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "PbapState_reason"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v9, "PbapState_itemCounts"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface/range {v3 .. v9}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothPbapCallbackListener;->onPbapStateChanged(Ljava/lang/String;Ljava/lang/String;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 964
    :cond_23
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw p1

    .line 952
    :pswitch_14
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 953
    :goto_24
    :try_start_13
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    .line 954
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "album"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 956
    :cond_24
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw p1

    .line 944
    :pswitch_15
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 945
    :goto_25
    :try_start_14
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_26

    .line 946
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_25

    const-string v3, "00:00:00:00:00:00"

    goto :goto_26

    :cond_25
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_26
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ErrorResponse_eventId"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpErrorResponse(Ljava/lang/String;IIB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 948
    :cond_26
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw p1

    .line 936
    :pswitch_16
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 937
    :goto_27
    :try_start_15
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_28

    .line 938
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_27

    const-string v3, "00:00:00:00:00:00"

    goto :goto_28

    :cond_27
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_28
    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-byte v4, v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpAbsoluteVolumeSet(Ljava/lang/String;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 940
    :cond_28
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    throw p1

    .line 928
    :pswitch_17
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 929
    :goto_29
    :try_start_16
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2a

    .line 930
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_29

    const-string v3, "00:00:00:00:00:00"

    goto :goto_2a

    :cond_29
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2a
    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpNowPlayingAdded(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 932
    :cond_2a
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    throw p1

    .line 920
    :pswitch_18
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 921
    :goto_2b
    :try_start_17
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2c

    .line 922
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_2b

    const-string v3, "00:00:00:00:00:00"

    goto :goto_2c

    :cond_2b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2c
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "SearchResult_itemCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpSearchResult(Ljava/lang/String;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 924
    :cond_2c
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    throw p1

    .line 912
    :pswitch_19
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 913
    :goto_2d
    :try_start_18
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2e

    .line 914
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_2d

    const-string v3, "00:00:00:00:00:00"

    goto :goto_2e

    :cond_2d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2e
    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpSelectedItemPlayed(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 916
    :cond_2e
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    throw p1

    .line 904
    :pswitch_1a
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 905
    :goto_2f
    :try_start_19
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_30

    .line 906
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_2f

    const-string v3, "00:00:00:00:00:00"

    goto :goto_30

    :cond_2f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_30
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ItemAttributes_metadataAtrributeIds"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ItemAttributes_texts"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpItemAttributes(Ljava/lang/String;[I[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 908
    :cond_30
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    throw p1

    .line 896
    :pswitch_1b
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 897
    :goto_31
    :try_start_1a
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_32

    .line 898
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_31

    const-string v3, "00:00:00:00:00:00"

    goto :goto_32

    :cond_31
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_32
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "PathChanged_itemCount"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpPathChanged(Ljava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 900
    :cond_32
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    throw p1

    .line 888
    :pswitch_1c
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 889
    :goto_33
    :try_start_1b
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_34

    .line 890
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_33

    const-string v3, "00:00:00:00:00:00"

    goto :goto_34

    :cond_33
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_34
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "FolderItems_itemCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpFolderItems(Ljava/lang/String;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 892
    :cond_34
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    throw p1

    .line 880
    :pswitch_1d
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 881
    :goto_35
    :try_start_1c
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_36

    .line 882
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_35

    const-string v3, "00:00:00:00:00:00"

    goto :goto_36

    :cond_35
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_36
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "BrowsedPlayer_itemCount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpBrowsedPlayerSet(Ljava/lang/String;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 884
    :cond_36
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    throw p1

    .line 872
    :pswitch_1e
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 873
    :goto_37
    :try_start_1d
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_38

    .line 874
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_37

    const-string v3, "00:00:00:00:00:00"

    goto :goto_38

    :cond_37
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_38
    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpAddressedPlayerSet(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 876
    :cond_38
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    throw p1

    .line 864
    :pswitch_1f
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 865
    :goto_39
    :try_start_1e
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3a

    .line 866
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_39

    const-string v3, "00:00:00:00:00:00"

    goto :goto_3a

    :cond_39
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3a
    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-byte v4, v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventVolumeChanged(Ljava/lang/String;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 868
    :cond_3a
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    throw p1

    .line 856
    :pswitch_20
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 857
    :goto_3b
    :try_start_1f
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3c

    .line 858
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_3b

    const-string v3, "00:00:00:00:00:00"

    goto :goto_3c

    :cond_3b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3c
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventUidsChanged(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 860
    :cond_3c
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    throw p1

    .line 848
    :pswitch_21
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 849
    :goto_3d
    :try_start_20
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3e

    .line 850
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_3d

    const-string v3, "00:00:00:00:00:00"

    goto :goto_3e

    :cond_3d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3e
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventAddressedPlayerChanged(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 852
    :cond_3e
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    throw p1

    .line 840
    :pswitch_22
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 841
    :goto_3f
    :try_start_21
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_40

    .line 842
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_3f

    const-string v3, "00:00:00:00:00:00"

    goto :goto_40

    :cond_3f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_40
    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventAvailablePlayerChanged(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 844
    :cond_40
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    throw p1

    .line 832
    :pswitch_23
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 833
    :goto_41
    :try_start_22
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_42

    .line 834
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_41

    const-string v3, "00:00:00:00:00:00"

    goto :goto_42

    :cond_41
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_42
    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventNowPlayingContentChanged(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 836
    :cond_42
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_22

    throw p1

    .line 824
    :pswitch_24
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 825
    :goto_43
    :try_start_23
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_44

    .line 826
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_43

    const-string v3, "00:00:00:00:00:00"

    goto :goto_44

    :cond_43
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_44
    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpBatteryStatusOfCtInformed(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 828
    :cond_44
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_23

    throw p1

    .line 816
    :pswitch_25
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 817
    :goto_45
    :try_start_24
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_46

    .line 818
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_45

    const-string v3, "00:00:00:00:00:00"

    goto :goto_46

    :cond_45
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_46
    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpDisplayableCharsetInformed(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 820
    :cond_46
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_24

    throw p1

    .line 807
    :pswitch_26
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 808
    :goto_47
    :try_start_25
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_48

    .line 809
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_47

    const-string v3, "00:00:00:00:00:00"

    goto :goto_48

    :cond_47
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_48
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-byte v5, v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "PlayerSettingValue_text"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpPlayerSettingValueText(Ljava/lang/String;IB[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 811
    :cond_48
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_25

    throw p1

    .line 799
    :pswitch_27
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 800
    :goto_49
    :try_start_26
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4a

    .line 801
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_49

    const-string v3, "00:00:00:00:00:00"

    goto :goto_4a

    :cond_49
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4a
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-byte v5, v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "PlayerSettingAttribute_text"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpPlayerSettingAttributeText(Ljava/lang/String;IB[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 803
    :cond_4a
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    throw p1

    .line 791
    :pswitch_28
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 792
    :goto_4b
    :try_start_27
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4c

    .line 793
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_4b

    const-string v3, "00:00:00:00:00:00"

    goto :goto_4c

    :cond_4b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4c
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpMetadataReceivingAborted(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 795
    :cond_4c
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_27

    throw p1

    .line 783
    :pswitch_29
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 784
    :goto_4d
    :try_start_28
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4e

    .line 785
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_4d

    const-string v3, "00:00:00:00:00:00"

    goto :goto_4e

    :cond_4d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "EventPlayerSetting_attributeIds"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "EventPlayerSetting_valueIds"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventPlayerSettingChanged(Ljava/lang/String;[B[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 787
    :cond_4e
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_28

    throw p1

    .line 775
    :pswitch_2a
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 776
    :goto_4f
    :try_start_29
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_50

    .line 777
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_4f

    const-string v3, "00:00:00:00:00:00"

    goto :goto_50

    :cond_4f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_50
    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-byte v4, v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventSystemStatusChanged(Ljava/lang/String;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 779
    :cond_50
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_29

    throw p1

    .line 767
    :pswitch_2b
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 768
    :goto_51
    :try_start_2a
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_52

    .line 769
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_51

    const-string v3, "00:00:00:00:00:00"

    goto :goto_52

    :cond_51
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_52
    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-byte v4, v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventBatteryStatusChanged(Ljava/lang/String;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 771
    :cond_52
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2a

    throw p1

    .line 759
    :pswitch_2c
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 760
    :goto_53
    :try_start_2b
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_54

    .line 761
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_53

    const-string v3, "00:00:00:00:00:00"

    goto :goto_54

    :cond_53
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_54
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "PlaybackPosChanged_songPos"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventPlaybackPosChanged(Ljava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 763
    :cond_54
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2b

    throw p1

    .line 751
    :pswitch_2d
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 752
    :goto_55
    :try_start_2c
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_56

    .line 753
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_55

    const-string v3, "00:00:00:00:00:00"

    goto :goto_56

    :cond_55
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_56
    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventTrackReachedStart(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 755
    :cond_56
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2c

    throw p1

    .line 743
    :pswitch_2e
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 744
    :goto_57
    :try_start_2d
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_58

    .line 745
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_57

    const-string v3, "00:00:00:00:00:00"

    goto :goto_58

    :cond_57
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_58
    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventTrackReachedEnd(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 747
    :cond_58
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2d

    throw p1

    .line 735
    :pswitch_2f
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 736
    :goto_59
    :try_start_2e
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5a

    .line 737
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_59

    const-string v3, "00:00:00:00:00:00"

    goto :goto_5a

    :cond_59
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "EventTrackChanged_elementId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventTrackChanged(Ljava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 739
    :cond_5a
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2e

    throw p1

    .line 727
    :pswitch_30
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 728
    :goto_5b
    :try_start_2f
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5c

    .line 729
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_5b

    const-string v3, "00:00:00:00:00:00"

    goto :goto_5c

    :cond_5b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5c
    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-byte v4, v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpEventPlaybackStatusChanged(Ljava/lang/String;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 731
    :cond_5c
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2f

    throw p1

    .line 719
    :pswitch_31
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 720
    :goto_5d
    :try_start_30
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5e

    .line 721
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_5d

    const-string v1, "00:00:00:00:00:00"

    goto :goto_5e

    :cond_5d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5e
    move-object v4, v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "PlayStatus_songLen"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "PlayStatus_songPos"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v9, "PlayStatus_statusId"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v9

    invoke-interface/range {v3 .. v9}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpPlayStatus(Ljava/lang/String;JJB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 723
    :cond_5e
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_30

    throw p1

    .line 711
    :pswitch_32
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 712
    :goto_5f
    :try_start_31
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_60

    .line 713
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_5f

    const-string v3, "00:00:00:00:00:00"

    goto :goto_60

    :cond_5f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_60
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ElementAttributes_metadataAtrributeIds"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ElementAttributes_texts"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpElementAttributesPlaying(Ljava/lang/String;[I[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 715
    :cond_60
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_31

    throw p1

    .line 703
    :pswitch_33
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 704
    :goto_61
    :try_start_32
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_62

    .line 705
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_61

    const-string v3, "00:00:00:00:00:00"

    goto :goto_62

    :cond_61
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_62
    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpPlayerSettingValueSet(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 707
    :cond_62
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_32

    throw p1

    .line 695
    :pswitch_34
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 696
    :goto_63
    :try_start_33
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_64

    .line 697
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_63

    const-string v3, "00:00:00:00:00:00"

    goto :goto_64

    :cond_63
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_64
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "PlayerSettingCurrent_attributeIds"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "PlayerSettingCurrent_valueIds"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpPlayerSettingCurrentValues(Ljava/lang/String;[B[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 699
    :cond_64
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_33

    throw p1

    .line 687
    :pswitch_35
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 688
    :goto_65
    :try_start_34
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_66

    .line 689
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_65

    const-string v3, "00:00:00:00:00:00"

    goto :goto_66

    :cond_65
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_66
    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-byte v4, v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "PlayerSetting_valueIds"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpPlayerSettingValuesList(Ljava/lang/String;B[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 691
    :cond_66
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_34

    throw p1

    .line 679
    :pswitch_36
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 680
    :goto_67
    :try_start_35
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_68

    .line 681
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_67

    const-string v3, "00:00:00:00:00:00"

    goto :goto_68

    :cond_67
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_68
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "PlayerSetting_attributeIds"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpPlayerSettingAttributesList(Ljava/lang/String;[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 683
    :cond_68
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_35

    throw p1

    .line 671
    :pswitch_37
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 672
    :goto_69
    :try_start_36
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6a

    .line 673
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_69

    const-string v3, "00:00:00:00:00:00"

    goto :goto_6a

    :cond_69
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Capabilities_eventIds"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->retAvrcpCapabilitiesSupportEvent(Ljava/lang/String;[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 675
    :cond_6a
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_36

    throw p1

    .line 663
    :pswitch_38
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 664
    :goto_6b
    :try_start_37
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6c

    .line 665
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_6b

    const-string v3, "00:00:00:00:00:00"

    goto :goto_6c

    :cond_6b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6c
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpBrowsingStateChanged(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 667
    :cond_6c
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_37

    throw p1

    .line 655
    :pswitch_39
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 656
    :goto_6d
    :try_start_38
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6e

    .line 657
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_6d

    const-string v3, "00:00:00:00:00:00"

    goto :goto_6e

    :cond_6d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6e
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onAvrcpStateChanged(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 659
    :cond_6e
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_38

    throw p1

    .line 644
    :pswitch_3a
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 648
    :goto_6f
    :try_start_39
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_70

    .line 649
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$200(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_6f

    const-string v3, "00:00:00:00:00:00"

    goto :goto_70

    :cond_6f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_70
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothA2dpCallbackListener;->onA2dpStateChanged(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 651
    :cond_70
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_39

    throw p1

    .line 636
    :pswitch_3b
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 637
    :goto_71
    :try_start_3a
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_72

    .line 638
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_71

    const-string v3, "00:00:00:00:00:00"

    goto :goto_72

    :cond_71
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_72
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "NumberChanged_activeNumber"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "NumberChanged_holdNumber"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpActiveNumberChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 640
    :cond_72
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_3a

    throw p1

    .line 628
    :pswitch_3c
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    move v1, v2

    .line 629
    :goto_73
    :try_start_3b
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_75

    .line 630
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_73

    const-string v5, "00:00:00:00:00:00"

    goto :goto_74

    :cond_73
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_74
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "PbapQuery_phoneNumber"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "PbapQuery_fullName"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v3, :cond_74

    move v8, v3

    goto :goto_75

    :cond_74
    move v8, v2

    :goto_75
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->retPbapQueryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 632
    :cond_75
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3b

    throw p1

    .line 620
    :pswitch_3d
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 621
    :goto_76
    :try_start_3c
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_77

    .line 622
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_76

    const-string v3, "00:00:00:00:00:00"

    goto :goto_77

    :cond_76
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_77
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Mic_prevVolume"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "Mic_newVolume"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpMicVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 624
    :cond_77
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_3c

    throw p1

    .line 612
    :pswitch_3e
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 613
    :goto_78
    :try_start_3d
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_79

    .line 614
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_78

    const-string v3, "00:00:00:00:00:00"

    goto :goto_79

    :cond_78
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_79
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Speaker_prevVolume"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "Speaker_newVolume"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpSpeakerVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 616
    :cond_79
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_3d

    throw p1

    .line 604
    :pswitch_3f
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 605
    :goto_7a
    :try_start_3e
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7b

    .line 606
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_7a

    const-string v3, "00:00:00:00:00:00"

    goto :goto_7b

    :cond_7a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "OutgoingCallNumber"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpOutgoingCallNumber(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    .line 608
    :cond_7b
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_3e

    throw p1

    .line 596
    :pswitch_40
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 597
    :goto_7c
    :try_start_3f
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7d

    .line 598
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_7c

    const-string v3, "00:00:00:00:00:00"

    goto :goto_7d

    :cond_7c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "IncomingCallNumber"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpIncomingCallNumber(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 600
    :cond_7d
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_3f

    throw p1

    .line 588
    :pswitch_41
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 589
    :goto_7e
    :try_start_40
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7f

    .line 590
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_7e

    const-string v3, "00:00:00:00:00:00"

    goto :goto_7f

    :cond_7e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7f
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpAtDownloadSMSStateChanged(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 592
    :cond_7f
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_40

    throw p1

    .line 580
    :pswitch_42
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 581
    :goto_80
    :try_start_41
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_81

    .line 582
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_80

    const-string v3, "00:00:00:00:00:00"

    goto :goto_81

    :cond_80
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_81
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpAtDownloadPhonebookStateChanged(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 584
    :cond_81
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_41

    throw p1

    .line 572
    :pswitch_43
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    move v1, v2

    .line 573
    :goto_82
    :try_start_42
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_84

    .line 574
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_82

    const-string v5, "00:00:00:00:00:00"

    goto :goto_83

    :cond_82
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_83
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_83

    move v6, v3

    goto :goto_84

    :cond_83
    move v6, v2

    :goto_84
    invoke-interface {v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpVoiceControlStateChanged(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    .line 576
    :cond_84
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_42

    throw p1

    .line 564
    :pswitch_44
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 565
    :goto_85
    :try_start_43
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_86

    .line 566
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_85

    const-string v1, "00:00:00:00:00:00"

    goto :goto_86

    :cond_85
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_86
    move-object v4, v1

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "SignalStatusChanged_maxStatus"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "SignalStatusChanged_minStatus"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface/range {v3 .. v8}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpRemoteDeviceSignalStatusChanged(Ljava/lang/String;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 568
    :cond_86
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_43

    throw p1

    .line 556
    :pswitch_45
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 557
    :goto_87
    :try_start_44
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_88

    .line 558
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_87

    const-string v1, "00:00:00:00:00:00"

    goto :goto_88

    :cond_87
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_88
    move-object v4, v1

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "StatusChanged_maxStatus"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "StatusChanged_minStatus"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface/range {v3 .. v8}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpRemoteDeviceBatteryStatusChanged(Ljava/lang/String;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 560
    :cond_88
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_44

    throw p1

    .line 548
    :pswitch_46
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    move v1, v2

    .line 549
    :goto_89
    :try_start_45
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8b

    .line 550
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_89

    const-string v5, "00:00:00:00:00:00"

    goto :goto_8a

    :cond_89
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_8a
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_8a

    move v6, v3

    goto :goto_8b

    :cond_8a
    move v6, v2

    :goto_8b
    invoke-interface {v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpRemoteDeviceRoamStatusChanged(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 552
    :cond_8b
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_45
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_45

    throw p1

    .line 540
    :pswitch_47
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    move v1, v2

    .line 541
    :goto_8c
    :try_start_46
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8e

    .line 542
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_8c

    const-string v5, "00:00:00:00:00:00"

    goto :goto_8d

    :cond_8c
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_8d
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_8d

    move v6, v3

    goto :goto_8e

    :cond_8d
    move v6, v2

    :goto_8e
    invoke-interface {v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpRemoteDeviceServiceStatusChanged(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 544
    :cond_8e
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_46
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_46

    throw p1

    .line 532
    :pswitch_48
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 533
    :goto_8f
    :try_start_47
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_90

    .line 534
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_8f

    const-string v3, "00:00:00:00:00:00"

    goto :goto_90

    :cond_8f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_90
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "DeviceSubscriber_number"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->retHfpRemoteDeviceSubscriberNumber(Ljava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 536
    :cond_90
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_47
    move-exception p1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_47

    throw p1

    .line 524
    :pswitch_49
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 525
    :goto_91
    :try_start_48
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_92

    .line 526
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_91

    const-string v3, "00:00:00:00:00:00"

    goto :goto_92

    :cond_91
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_92
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "NetworkOperator_mode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "NetworkOperator_operator"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->retHfpRemoteDeviceNetworkOperator(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 528
    :cond_92
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_48

    throw p1

    .line 516
    :pswitch_4a
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 517
    :goto_93
    :try_start_49
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_93

    .line 518
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "PhoneNumberChanged_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpRemoteDevicePhoneNumberChanged(Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 520
    :cond_93
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_49

    throw p1

    .line 508
    :pswitch_4b
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 509
    :goto_94
    :try_start_4a
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_94

    .line 510
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "retHfpRemoteDeviceInfo_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lnfore/android/bt/servicemanager/HfpStatusInfo;

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->retHfpRemoteDeviceInfo(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpStatusInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 512
    :cond_94
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_4a
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_4a

    throw p1

    .line 500
    :pswitch_4c
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 501
    :goto_95
    :try_start_4b
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_95

    .line 502
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "onHfpErrorResponse_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lnfore/android/bt/servicemanager/HfpErrorInfo;

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpErrorResponse(Ljava/lang/String;Lnfore/android/bt/servicemanager/HfpErrorInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 504
    :cond_95
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_4b
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_4b

    throw p1

    .line 492
    :pswitch_4d
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 493
    :goto_96
    :try_start_4c
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_97

    .line 494
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_96

    const-string v3, "00:00:00:00:00:00"

    goto :goto_97

    :cond_96
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_97
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpScoStateChanged(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 496
    :cond_97
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_4c

    throw p1

    .line 484
    :pswitch_4e
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 485
    :goto_98
    :try_start_4d
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_99

    .line 486
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_98

    const-string v3, "00:00:00:00:00:00"

    goto :goto_99

    :cond_98
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_99
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpMicSelectionChanged(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 488
    :cond_99
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_4d
    move-exception p1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_4d

    throw p1

    .line 476
    :pswitch_4f
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 477
    :goto_9a
    :try_start_4e
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9b

    .line 478
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_9a

    const-string v3, "00:00:00:00:00:00"

    goto :goto_9b

    :cond_9a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9b
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpMuteStateChanged(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .line 480
    :cond_9b
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_4e

    throw p1

    .line 468
    :pswitch_50
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 469
    :goto_9c
    :try_start_4f
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9d

    .line 470
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_9c

    const-string v3, "00:00:00:00:00:00"

    goto :goto_9d

    :cond_9c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9d
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpCallStateChanged(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    .line 472
    :cond_9d
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_4f
    move-exception p1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_4f

    throw p1

    .line 460
    :pswitch_51
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 461
    :goto_9e
    :try_start_50
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9f

    .line 462
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$100(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_9e

    const-string v3, "00:00:00:00:00:00"

    goto :goto_9f

    :cond_9e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9f
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothHfpCallbackListener;->onHfpStateChanged(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 464
    :cond_9f
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_50

    throw p1

    .line 452
    :pswitch_52
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 453
    :goto_a0
    :try_start_51
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a0

    .line 454
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->onSecureSimplePairingRequest(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    .line 456
    :cond_a0
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_51
    move-exception p1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_51

    throw p1

    .line 444
    :pswitch_53
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 445
    :goto_a1
    :try_start_52
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a2

    .line 446
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_a1

    const-string v3, "00:00:00:00:00:00"

    goto :goto_a2

    :cond_a1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_a2
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->onHfpStateChangedService(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    .line 448
    :cond_a2
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_52
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_52

    throw p1

    .line 436
    :pswitch_54
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 437
    :goto_a3
    :try_start_53
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a4

    .line 438
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_a3

    const-string v3, "00:00:00:00:00:00"

    goto :goto_a4

    :cond_a3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_a4
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->onA2dpStateChangedService(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 440
    :cond_a4
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_53
    move-exception p1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_53

    throw p1

    .line 428
    :pswitch_55
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 429
    :goto_a5
    :try_start_54
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a6

    .line 430
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_a5

    const-string v3, "00:00:00:00:00:00"

    goto :goto_a6

    :cond_a5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_a6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "DeviceUuidsGot_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3, v4, v5}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->onDeviceUuidsGot(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a5

    .line 432
    :cond_a6
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_54

    throw p1

    .line 420
    :pswitch_56
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 421
    :goto_a7
    :try_start_55
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a8

    .line 422
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_a7

    const-string v3, "00:00:00:00:00:00"

    goto :goto_a8

    :cond_a7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_a8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "onDevicePairFailed_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->onDevicePairFailed(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 424
    :cond_a8
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_55
    move-exception p1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_55

    throw p1

    .line 412
    :pswitch_57
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 413
    :goto_a9
    :try_start_56
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_aa

    .line 414
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_a9

    const-string v3, "00:00:00:00:00:00"

    goto :goto_aa

    :cond_a9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_aa
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "onDeviceUnpaired_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->onDeviceUnpaired(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    .line 416
    :cond_aa
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_56
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_56

    throw p1

    .line 404
    :pswitch_58
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 405
    :goto_ab
    :try_start_57
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_ac

    .line 406
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_ab

    const-string v3, "00:00:00:00:00:00"

    goto :goto_ac

    :cond_ab
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_ac
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "onDevicePaired_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    int-to-byte v6, v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->onDevicePaired(Ljava/lang/String;Ljava/lang/String;IB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    .line 408
    :cond_ac
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_57
    move-exception p1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_57

    throw p1

    .line 391
    :pswitch_59
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    move v1, v2

    .line 392
    :goto_ad
    :try_start_58
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b0

    .line 393
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_ae

    .line 394
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    const-string v5, ""

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "onDeviceFound_name"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-byte v7, v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v3, :cond_ad

    move v8, v3

    goto :goto_ae

    :cond_ad
    move v8, v2

    :goto_ae
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->onDeviceFound(Ljava/lang/String;Ljava/lang/String;BZ)V

    goto :goto_b0

    .line 396
    :cond_ae
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v4}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "onDeviceFound_name"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    int-to-byte v7, v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v3, :cond_af

    move v8, v3

    goto :goto_af

    :cond_af
    move v8, v2

    :goto_af
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->onDeviceFound(Ljava/lang/String;Ljava/lang/String;BZ)V

    :goto_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    .line 400
    :cond_b0
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_58
    move-exception p1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_58

    throw p1

    .line 383
    :pswitch_5a
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 384
    :goto_b1
    :try_start_59
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_b1

    .line 385
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "FoundDevices_address"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "FoundDevices_name"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "FoundDevices_supportProfiles"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "FoundDevices_category"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->retBluetoothFoundDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    .line 387
    :cond_b1
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_59

    throw p1

    .line 375
    :pswitch_5b
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 376
    :goto_b2
    :try_start_5a
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_b2

    .line 377
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "ExtendDevices_address"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "ExtendDevices_name"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "ExtendDevices_supportProfiles"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "ExtendDevices_category"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v9, "ExtendDevices_connected"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v10, "ExtendDevices_actived"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v10

    invoke-interface/range {v3 .. v10}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->retBluetoothPairedDevicesExtend(I[Ljava/lang/String;[Ljava/lang/String;[I[B[Z[Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b2

    .line 379
    :cond_b2
    monitor-exit v0

    goto/16 :goto_b6

    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_5a

    throw p1

    .line 367
    :pswitch_5c
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 368
    :goto_b3
    :try_start_5b
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_b3

    .line 369
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "PairedDevices_address"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "PairedDevices_name"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "PairedDevices_supportProfiles"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "PairedDevices_category"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->retBluetoothPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    .line 371
    :cond_b3
    monitor-exit v0

    goto :goto_b6

    :catchall_5b
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_5b

    throw p1

    .line 359
    :pswitch_5d
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 360
    :goto_b4
    :try_start_5c
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_b4

    .line 361
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->onAdapterStateChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 363
    :cond_b4
    monitor-exit v0

    goto :goto_b6

    :catchall_5c
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_5c

    throw p1

    .line 351
    :pswitch_5e
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 352
    :goto_b5
    :try_start_5d
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_b5

    .line 353
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager$1;->this$0:Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->access$000(Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceCallbackListener;->onServiceReady(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b5

    .line 355
    :cond_b5
    monitor-exit v0

    goto :goto_b6

    :catchall_5d
    move-exception p1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_5d

    throw p1

    :goto_b6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
