.class Lcom/hzbhd/common/ui/paged/PagedView$1;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/paged/PagedView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/paged/PagedView;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/paged/PagedView;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView$1;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 847
    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 848
    invoke-virtual {p1, p0}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 849
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView$1;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/PagedView;->updateMaxScrollX()V

    :cond_0
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
