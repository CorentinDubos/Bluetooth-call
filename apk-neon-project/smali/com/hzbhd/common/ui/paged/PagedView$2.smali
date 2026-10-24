.class Lcom/hzbhd/common/ui/paged/PagedView$2;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/paged/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/paged/PagedView;

.field final synthetic val$dragViewIndex:I

.field final synthetic val$pageUnderPointIndex:I


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/paged/PagedView;II)V
    .locals 0

    .line 1549
    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    iput p2, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->val$pageUnderPointIndex:I

    iput p3, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->val$dragViewIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1553
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->val$pageUnderPointIndex:I

    invoke-virtual {v0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->snapToPage(I)V

    .line 1558
    iget v0, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->val$dragViewIndex:I

    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->val$pageUnderPointIndex:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1559
    :goto_0
    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->val$dragViewIndex:I

    iget v4, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->val$pageUnderPointIndex:I

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    .line 1561
    :cond_1
    iget v1, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->val$dragViewIndex:I

    iget v5, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->val$pageUnderPointIndex:I

    if-le v1, v5, :cond_2

    add-int/lit8 v5, v1, -0x1

    :cond_2
    :goto_1
    if-gt v4, v5, :cond_4

    .line 1564
    iget-object v1, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-virtual {v1, v4}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1568
    iget-object v6, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-virtual {v6}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetX()I

    move-result v6

    iget-object v7, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-virtual {v7, v4}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 1569
    iget-object v7, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-virtual {v7}, Lcom/hzbhd/common/ui/paged/PagedView;->getViewportOffsetX()I

    move-result v7

    iget-object v8, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    add-int v9, v4, v0

    invoke-virtual {v8, v9}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildOffset(I)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x64

    .line 1573
    invoke-virtual {v1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_3

    .line 1575
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 1578
    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1579
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1580
    sget v7, Lcom/hzbhd/common/ui/paged/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v7, v3, [Landroid/animation/Animator;

    new-array v8, v3, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v8, v10

    const-string/jumbo v9, "translationX"

    .line 1582
    invoke-static {v1, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v10

    .line 1581
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1583
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 1584
    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1587
    :cond_4
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    iget-object v1, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/hzbhd/common/ui/paged/PagedView;->removeView(Landroid/view/View;)V

    .line 1588
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    iget-object v1, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mDragView:Landroid/view/View;

    iget v3, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->val$pageUnderPointIndex:I

    invoke-virtual {v0, v1, v3}, Lcom/hzbhd/common/ui/paged/PagedView;->addView(Landroid/view/View;I)V

    .line 1589
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    iput v2, v0, Lcom/hzbhd/common/ui/paged/PagedView;->mSidePageHoverIndex:I

    .line 1590
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-virtual {v0}, Lcom/hzbhd/common/ui/paged/PagedView;->getNextPage()I

    move-result v1

    iget-object v2, p0, Lcom/hzbhd/common/ui/paged/PagedView$2;->this$0:Lcom/hzbhd/common/ui/paged/PagedView;

    invoke-virtual {v2}, Lcom/hzbhd/common/ui/paged/PagedView;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/common/ui/paged/PagedView;->updatePageIndicator(II)V

    return-void
.end method
