.class Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;
.super Ljava/lang/Object;
.source "TouchExpendUitls.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls;->expendTouchArea(Landroid/view/View;Landroid/view/ViewParent;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bottomExpend:I

.field final synthetic val$leftExpend:I

.field final synthetic val$rightExpend:I

.field final synthetic val$textView:Landroid/view/View;

.field final synthetic val$topExpend:I


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$textView:Landroid/view/View;

    iput p2, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$topExpend:I

    iput p3, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$leftExpend:I

    iput p4, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$rightExpend:I

    iput p5, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$bottomExpend:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----------addOnGlobalLayoutListener-------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$textView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 42
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFistPart.getMeasuredHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$textView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mFistPart.getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$textView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$textView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 47
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$topExpend:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 48
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$leftExpend:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 49
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$rightExpend:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 50
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$bottomExpend:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 56
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$textView:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 58
    const-class v0, Landroid/view/View;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$textView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/TouchExpendUitls$1;->val$textView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method
