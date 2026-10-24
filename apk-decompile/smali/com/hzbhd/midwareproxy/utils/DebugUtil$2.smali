.class Lcom/hzbhd/midwareproxy/utils/DebugUtil$2;
.super Landroid/os/Handler;
.source "DebugUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/utils/DebugUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/utils/DebugUtil;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/utils/DebugUtil;Landroid/os/Looper;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil$2;->this$0:Lcom/hzbhd/midwareproxy/utils/DebugUtil;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 167
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    .line 168
    sget-object p1, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->TAG:Ljava/lang/String;

    const-string v0, "==== RESTART_SYSTEM ===="

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/DebugUtil$2;->this$0:Lcom/hzbhd/midwareproxy/utils/DebugUtil;

    iget-object p1, p1, Lcom/hzbhd/midwareproxy/utils/DebugUtil;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string/jumbo v0, "\u91cd\u542f\u7cfb\u7edf"

    .line 170
    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
