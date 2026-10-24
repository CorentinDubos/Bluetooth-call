.class Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;
.super Landroid/os/Handler;
.source "LongClickUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/utils/LongClickUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 56
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->access$102(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;Z)Z

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DemoAc onDown HANDLER_ACTION_WOLUMN_CHANGED isDown= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->access$100(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mww"

    invoke-static {v3, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->access$100(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->iosInterceptFlag:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->onDown(I)Z

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->access$100(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->iosInterceptFlag:Z

    if-nez p1, :cond_6

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->access$000(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->access$000(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 45
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->access$000(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->access$000(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 31
    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 32
    iput v1, v0, Landroid/os/Message;->what:I

    .line 33
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->access$000(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 38
    iput v2, v0, Landroid/os/Message;->what:I

    .line 39
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 40
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/LongClickUtils$1;->this$0:Lcom/hzbhd/midwareproxy/utils/LongClickUtils;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/LongClickUtils;->access$000(Lcom/hzbhd/midwareproxy/utils/LongClickUtils;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    :goto_0
    return-void
.end method
