.class Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;
.super Ljava/lang/Thread;
.source "LcdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportTempLcdInfor([BLandroid/content/Context;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

.field final synthetic val$delayTime:Ljava/lang/Long;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;Landroid/content/Context;Ljava/lang/Long;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;->val$delayTime:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "hzbhd_LCD_IS_SOURCE_CHANGED"

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    iget-wide v3, v1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->count_time:J

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;->val$delayTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x32

    .line 186
    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/ThreadUtils;->sleep(J)V

    .line 187
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    iget-wide v5, v1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->count_time:J

    add-long/2addr v5, v3

    iput-wide v5, v1, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->count_time:J

    goto :goto_0

    .line 189
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager$1;->val$mContext:Landroid/content/Context;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdManager;->reportLcdInforByeSource(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
