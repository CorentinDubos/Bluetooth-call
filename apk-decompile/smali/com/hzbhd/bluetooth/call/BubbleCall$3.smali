.class Lcom/hzbhd/bluetooth/call/BubbleCall$3;
.super Landroid/os/Handler;
.source "BubbleCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/call/BubbleCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/call/BubbleCall;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 257
    :try_start_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    const-string v0, "com.hzbhd.bluetooth.hfp.HfpMainActivity"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->isBackground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$400(Lcom/hzbhd/bluetooth/call/BubbleCall;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 259
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$200(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$100(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$000(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$402(Lcom/hzbhd/bluetooth/call/BubbleCall;Z)Z

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$400(Lcom/hzbhd/bluetooth/call/BubbleCall;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$200(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$100(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 265
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$402(Lcom/hzbhd/bluetooth/call/BubbleCall;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandlerUICheck:Landroid/os/Handler;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$3;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/call/BubbleCall;->mHandlerUICheck:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
