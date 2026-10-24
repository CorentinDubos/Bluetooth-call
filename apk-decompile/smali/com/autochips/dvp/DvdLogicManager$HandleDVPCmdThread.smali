.class Lcom/autochips/dvp/DvdLogicManager$HandleDVPCmdThread;
.super Ljava/lang/Thread;
.source "DvdLogicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/dvp/DvdLogicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleDVPCmdThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/dvp/DvdLogicManager;

.field time:J


# direct methods
.method private constructor <init>(Lcom/autochips/dvp/DvdLogicManager;)V
    .locals 2

    .line 2242
    iput-object p1, p0, Lcom/autochips/dvp/DvdLogicManager$HandleDVPCmdThread;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autochips/dvp/DvdLogicManager$HandleDVPCmdThread;->time:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/autochips/dvp/DvdLogicManager;Lcom/autochips/dvp/DvdLogicManager$1;)V
    .locals 0

    .line 2242
    invoke-direct {p0, p1}, Lcom/autochips/dvp/DvdLogicManager$HandleDVPCmdThread;-><init>(Lcom/autochips/dvp/DvdLogicManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dvp][framework] HandleDVPCmdThread tid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DvdLogicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :catch_0
    :goto_0
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->access$800()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 2251
    :try_start_0
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->access$900()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2253
    iget-object v2, p0, Lcom/autochips/dvp/DvdLogicManager$HandleDVPCmdThread;->this$0:Lcom/autochips/dvp/DvdLogicManager;

    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->access$900()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;

    iget v3, v3, Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;->cmd:I

    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->access$900()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;

    iget v4, v4, Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;->arg1:I

    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->access$900()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;

    iget v5, v5, Lcom/autochips/dvp/DvdLogicManager$DVP_CMD;->arg2:I

    invoke-static {v2, v3, v4, v5}, Lcom/autochips/dvp/DvdLogicManager;->access$1000(Lcom/autochips/dvp/DvdLogicManager;III)V

    .line 2254
    invoke-static {}, Lcom/autochips/dvp/DvdLogicManager;->access$900()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    .line 2259
    :try_start_1
    invoke-static {v2, v3}, Lcom/autochips/dvp/DvdLogicManager$HandleDVPCmdThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 2266
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "[dvp][framework] HandleDVPCmdThread Exception..."

    .line 2267
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    invoke-static {v0}, Lcom/autochips/dvp/DvdLogicManager;->access$802(Z)Z

    goto :goto_0

    .line 2271
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dvp][framework] HandleDVPCmdThread tid["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] exit!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
