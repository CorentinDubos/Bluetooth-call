.class public Lcom/hzbhd/common/_54/ui/CanCircleAnim;
.super Landroid/widget/RelativeLayout;
.source "CanCircleAnim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/Animator$AnimatorPauseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/common/_54/ui/CanCircleAnim$OnProgressChangeListener;
    }
.end annotation


# instance fields
.field animator:Landroid/animation/ObjectAnimator;

.field chesu:Landroid/widget/TextView;

.field private mOnProgressChangeListener:Lcom/hzbhd/common/_54/ui/CanCircleAnim$OnProgressChangeListener;

.field private myAnimation_Rotate:Landroid/view/animation/RotateAnimation;

.field tv_zhuansu:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/hzbhd/common/ui/R$layout;->__54__can_circleanim:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->view:Landroid/view/View;

    .line 36
    sget p2, Lcom/hzbhd/common/ui/R$id;->iv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 37
    new-instance p2, Lcom/hzbhd/common/_54/ui/CanCircleAnim$1;

    invoke-direct {p2, p0}, Lcom/hzbhd/common/_54/ui/CanCircleAnim$1;-><init>(Lcom/hzbhd/common/_54/ui/CanCircleAnim;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 43
    fill-array-data p2, :array_0

    const-string/jumbo v0, "rotation"

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xbb8

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 45
    iget-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 46
    iget-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->view:Landroid/view/View;

    sget p2, Lcom/hzbhd/common/ui/R$id;->tv_zhuansu:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->tv_zhuansu:Landroid/widget/TextView;

    .line 47
    iget-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->view:Landroid/view/View;

    sget p2, Lcom/hzbhd/common/ui/R$id;->chesu:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->chesu:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0}, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->getId()I

    move-result p1

    sget p2, Lcom/hzbhd/common/ui/R$id;->carinfo_zhuansu_n54:I

    if-ne p1, p2, :cond_0

    .line 49
    iget-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->chesu:Landroid/widget/TextView;

    const-string p2, "r/min"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->getId()I

    move-result p1

    sget p2, Lcom/hzbhd/common/ui/R$id;->carinfo_chesu_n54:I

    if-ne p1, p2, :cond_1

    .line 51
    iget-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->chesu:Landroid/widget/TextView;

    const-string p2, "km/h"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->addView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43700000    # 240.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "mwwwwww"

    const-string v0, "onAnimationCancel"

    .line 83
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "mwwwwww"

    const-string v0, "onAnimationEnd"

    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x64

    .line 68
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->updateProgress(I)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "mwwwwww"

    const-string v0, "onAnimationPause"

    .line 73
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "mwwwwww"

    const-string v0, "onAnimationRepeat"

    .line 88
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "mwwwwww"

    const-string v0, "onAnimationResume"

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "mwwwwww"

    const-string v0, "onAnimationStart"

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->updateProgress(I)V

    return-void
.end method

.method public setmOnProgressChangeListener(Lcom/hzbhd/common/_54/ui/CanCircleAnim$OnProgressChangeListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->mOnProgressChangeListener:Lcom/hzbhd/common/_54/ui/CanCircleAnim$OnProgressChangeListener;

    return-void
.end method

.method public updateProgress(I)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->mOnProgressChangeListener:Lcom/hzbhd/common/_54/ui/CanCircleAnim$OnProgressChangeListener;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0, p1}, Lcom/hzbhd/common/_54/ui/CanCircleAnim$OnProgressChangeListener;->onProgressChanged(Landroid/view/View;I)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->getId()I

    move-result v0

    sget v1, Lcom/hzbhd/common/ui/R$id;->carinfo_zhuansu_n54:I

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->tv_zhuansu:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->getId()I

    move-result v0

    sget v1, Lcom/hzbhd/common/ui/R$id;->carinfo_chesu_n54:I

    if-ne v0, v1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->tv_zhuansu:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
