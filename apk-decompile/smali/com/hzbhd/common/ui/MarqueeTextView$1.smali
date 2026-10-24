.class Lcom/hzbhd/common/ui/MarqueeTextView$1;
.super Landroid/os/Handler;
.source "MarqueeTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/MarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/MarqueeTextView;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/MarqueeTextView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/hzbhd/common/ui/MarqueeTextView$1;->this$0:Lcom/hzbhd/common/ui/MarqueeTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 117
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/common/ui/MarqueeTextView$1;->this$0:Lcom/hzbhd/common/ui/MarqueeTextView;

    invoke-static {p1}, Lcom/hzbhd/common/ui/MarqueeTextView;->access$000(Lcom/hzbhd/common/ui/MarqueeTextView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/hzbhd/common/ui/MarqueeTextView$1;->this$0:Lcom/hzbhd/common/ui/MarqueeTextView;

    invoke-static {p1}, Lcom/hzbhd/common/ui/MarqueeTextView;->access$100(Lcom/hzbhd/common/ui/MarqueeTextView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object p1, p0, Lcom/hzbhd/common/ui/MarqueeTextView$1;->this$0:Lcom/hzbhd/common/ui/MarqueeTextView;

    invoke-static {p1}, Lcom/hzbhd/common/ui/MarqueeTextView;->access$200(Lcom/hzbhd/common/ui/MarqueeTextView;)V

    .line 122
    iget-object p1, p0, Lcom/hzbhd/common/ui/MarqueeTextView$1;->this$0:Lcom/hzbhd/common/ui/MarqueeTextView;

    invoke-static {p1}, Lcom/hzbhd/common/ui/MarqueeTextView;->access$300(Lcom/hzbhd/common/ui/MarqueeTextView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method
