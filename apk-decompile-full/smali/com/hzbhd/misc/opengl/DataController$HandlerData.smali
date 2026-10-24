.class Lcom/hzbhd/misc/opengl/DataController$HandlerData;
.super Landroid/os/Handler;
.source "DataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/misc/opengl/DataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandlerData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/misc/opengl/DataController;


# direct methods
.method public constructor <init>(Lcom/hzbhd/misc/opengl/DataController;Landroid/os/Looper;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    .line 152
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-virtual {v1}, Lcom/hzbhd/misc/opengl/DataController;->ismDataUpdate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , isStopRender() handleMessage ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "opengl"

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    const-wide/16 v5, 0x8

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v0, v9, :cond_8

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_0

    goto/16 :goto_4

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IDLE_MSG handleMessage  START_REDNDER_MSG."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$000(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$000(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$100(Lcom/hzbhd/misc/opengl/DataController;)V

    .line 183
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget v0, v0, Lcom/hzbhd/misc/opengl/DataController;->width:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget v0, v0, Lcom/hzbhd/misc/opengl/DataController;->height:I

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget v0, v0, Lcom/hzbhd/misc/opengl/DataController;->width:I

    sget-object v10, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    aget v10, v10, v9

    if-ne v0, v10, :cond_6

    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget v0, v0, Lcom/hzbhd/misc/opengl/DataController;->height:I

    sget-object v10, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    aget v10, v10, v8

    if-eq v0, v10, :cond_3

    goto :goto_1

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$200(Lcom/hzbhd/misc/opengl/DataController;)V

    .line 198
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget-object v0, v0, Lcom/hzbhd/misc/opengl/DataController;->videoData:[B

    const/16 v9, 0xa

    aget-byte v0, v0, v9

    const/16 v9, 0x10

    if-ne v0, v9, :cond_4

    goto :goto_0

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget-object v0, v0, Lcom/hzbhd/misc/opengl/DataController;->datas:Lcom/hzbhd/misc/opengl/Data;

    iget-object v9, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget v9, v9, Lcom/hzbhd/misc/opengl/DataController;->width:I

    iget-object v10, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget v10, v10, Lcom/hzbhd/misc/opengl/DataController;->height:I

    iget-object v11, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget-object v11, v11, Lcom/hzbhd/misc/opengl/DataController;->videoData:[B

    invoke-virtual {v0, v9, v10, v11}, Lcom/hzbhd/misc/opengl/Data;->putData(II[B)V

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget-object v0, v0, Lcom/hzbhd/misc/opengl/DataController;->mDataCallback:Lcom/hzbhd/misc/opengl/DataController$DataCallback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget-object v0, v0, Lcom/hzbhd/misc/opengl/DataController;->mDataCallback:Lcom/hzbhd/misc/opengl/DataController$DataCallback;

    iget-object v9, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget-object v9, v9, Lcom/hzbhd/misc/opengl/DataController;->datas:Lcom/hzbhd/misc/opengl/Data;

    invoke-interface {v0, v9}, Lcom/hzbhd/misc/opengl/DataController$DataCallback;->onDataCallback(Lcom/hzbhd/misc/opengl/Data;)V

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$000(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    move-result-object v0

    invoke-virtual {v0, v8, v5, v6}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessageDelayed(IJ)Z

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "77 handleMessage  START_REDNDER_MSG."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 190
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$000(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    move-result-object v0

    const-wide/16 v5, 0x14

    invoke-virtual {v0, v9, v5, v6}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "55 handleMessage  START_REDNDER_MSG."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 185
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$000(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    move-result-object v0

    invoke-virtual {v0, v9, v5, v6}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 160
    :cond_8
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$000(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 161
    sget-object v0, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    if-nez v0, :cond_9

    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    .line 162
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage width: ."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget v10, v10, Lcom/hzbhd/misc/opengl/DataController;->width:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ,height: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget v10, v10, Lcom/hzbhd/misc/opengl/DataController;->height:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ,videoHead: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    array-length v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$100(Lcom/hzbhd/misc/opengl/DataController;)V

    .line 164
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    sget-object v10, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iput v10, v0, Lcom/hzbhd/misc/opengl/DataController;->status:I

    .line 165
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    sget-object v10, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    aget v10, v10, v9

    iput v10, v0, Lcom/hzbhd/misc/opengl/DataController;->width:I

    .line 166
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    sget-object v10, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    aget v10, v10, v8

    iput v10, v0, Lcom/hzbhd/misc/opengl/DataController;->height:I

    .line 167
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    sget-object v10, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    iput v10, v0, Lcom/hzbhd/misc/opengl/DataController;->format:I

    .line 168
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    sget-object v10, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    aget v10, v10, v7

    iput v10, v0, Lcom/hzbhd/misc/opengl/DataController;->length:I

    .line 169
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    sget-object v10, Lcom/hzbhd/misc/opengl/DataController;->videoHead:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    iput v10, v0, Lcom/hzbhd/misc/opengl/DataController;->channel:I

    .line 170
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget v0, v0, Lcom/hzbhd/misc/opengl/DataController;->width:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget v0, v0, Lcom/hzbhd/misc/opengl/DataController;->height:I

    if-nez v0, :cond_a

    goto :goto_3

    .line 176
    :cond_a
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget v9, v0, Lcom/hzbhd/misc/opengl/DataController;->width:I

    iget-object v10, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    iget v10, v10, Lcom/hzbhd/misc/opengl/DataController;->height:I

    invoke-virtual {v0, v9, v10}, Lcom/hzbhd/misc/opengl/DataController;->resetVideoData(II)V

    .line 177
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$000(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    move-result-object v0

    invoke-virtual {v0, v8, v5, v6}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 172
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$000(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    move-result-object v0

    invoke-virtual {v0, v9, v5, v6}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessageDelayed(IJ)Z

    .line 213
    :goto_4
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/DataController;->scanRenderFlag()V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "88 handleMessage  START_REDNDER_MSG."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-virtual {v0}, Lcom/hzbhd/misc/opengl/DataController;->ismDataUpdate()Z

    move-result v0

    if-nez v0, :cond_c

    .line 216
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$000(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->this$0:Lcom/hzbhd/misc/opengl/DataController;

    invoke-static {v0}, Lcom/hzbhd/misc/opengl/DataController;->access$000(Lcom/hzbhd/misc/opengl/DataController;)Lcom/hzbhd/misc/opengl/DataController$HandlerData;

    move-result-object v0

    invoke-virtual {v0, v7, v2, v3}, Lcom/hzbhd/misc/opengl/DataController$HandlerData;->sendEmptyMessageDelayed(IJ)Z

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "99 handleMessage  START_REDNDER_MSG."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1010 handleMessage  START_REDNDER_MSG."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
