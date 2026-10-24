.class Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;
.super Landroid/os/Handler;
.source "VideoParkingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/video/VideoParkingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;Landroid/os/Looper;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;->this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 92
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;->this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->access$100(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;->this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->access$100(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 96
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->values()[Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    .line 97
    sget-object v1, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$2;->$SwitchMap$com$hzbhd$midwareproxy$video$VideoParkingManager$VIDEO_CALLBACK_MSG:[I

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$VIDEO_CALLBACK_MSG;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto/16 :goto_2

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;->this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->access$100(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 109
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;->this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->access$100(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;->this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->access$100(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$ParkingCallBackListenr;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$ParkingCallBackListenr;->onParingStateChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;->this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->access$100(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 100
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;->this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->access$100(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 101
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 102
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/video/VideoParkingManager$1;->this$0:Lcom/hzbhd/midwareproxy/video/VideoParkingManager;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/video/VideoParkingManager;->access$100(Lcom/hzbhd/midwareproxy/video/VideoParkingManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$ParkingCallBackListenr;

    invoke-static {}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->values()[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    move-result-object v4

    const-string/jumbo v5, "videoType"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;->values()[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    move-result-object v5

    const-string/jumbo v6, "videoState"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;->values()[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    move-result-object v6

    const-string/jumbo v7, "videoFormat"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v2, v6, v2

    invoke-interface {v3, v4, v5, v2}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$ParkingCallBackListenr;->reportVideoStatus(Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    :cond_4
    monitor-exit v0

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_5
    :goto_3
    const-string p1, "bluetoothManager"

    const-string v0, "mVideoUpdateListener is null"

    .line 93
    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
