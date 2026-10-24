.class Lcom/hzbhd/common/ui/paged/PagedView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/paged/PagedView;->animateDragViewToOriginalPosition()V
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

    .line 2040
    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView$3;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2043
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView$3;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/paged/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method
