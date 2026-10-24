.class Lcom/hzbhd/bluetooth/call/BubbleCall$1;
.super Ljava/lang/Object;
.source "BubbleCall.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/call/BubbleCall;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

.field final synthetic val$systemUIHeight:I


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/call/BubbleCall;I)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$1;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    iput p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$1;->val$systemUIHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 148
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IL1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KC1E0107-P49"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 149
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$1;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$000(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$1;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$100(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr p2, v1

    iget v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$1;->val$systemUIHeight:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 152
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$1;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$200(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$1;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$100(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$1;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$000(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$1;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$300(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/hzbhd/bluetooth/call/BubbleCall$1;->this$0:Lcom/hzbhd/bluetooth/call/BubbleCall;

    invoke-static {p2}, Lcom/hzbhd/bluetooth/call/BubbleCall;->access$000(Lcom/hzbhd/bluetooth/call/BubbleCall;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v0, "bubbleY"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
