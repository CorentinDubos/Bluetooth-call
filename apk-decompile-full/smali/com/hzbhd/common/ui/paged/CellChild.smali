.class public Lcom/hzbhd/common/ui/paged/CellChild;
.super Landroid/widget/RelativeLayout;
.source "CellChild.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellChild"


# instance fields
.field private downX:F

.field private downY:F

.field private event_move:Z

.field private isLongClick:Z

.field private isThisTouch:Z

.field private longClickRunnable:Ljava/lang/Runnable;

.field protected page:I

.field protected x:I

.field protected x_size:I

.field protected y:I

.field protected y_size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x:I

    .line 14
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y:I

    .line 15
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->page:I

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x_size:I

    .line 17
    iput v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y_size:I

    .line 80
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->event_move:Z

    .line 81
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isThisTouch:Z

    .line 82
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isLongClick:Z

    .line 95
    new-instance p1, Lcom/hzbhd/common/ui/paged/CellChild$1;

    invoke-direct {p1, p0}, Lcom/hzbhd/common/ui/paged/CellChild$1;-><init>(Lcom/hzbhd/common/ui/paged/CellChild;)V

    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->longClickRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x:I

    .line 14
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y:I

    .line 15
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->page:I

    const/4 p2, 0x1

    .line 16
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x_size:I

    .line 17
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y_size:I

    .line 80
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->event_move:Z

    .line 81
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isThisTouch:Z

    .line 82
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isLongClick:Z

    .line 95
    new-instance p1, Lcom/hzbhd/common/ui/paged/CellChild$1;

    invoke-direct {p1, p0}, Lcom/hzbhd/common/ui/paged/CellChild$1;-><init>(Lcom/hzbhd/common/ui/paged/CellChild;)V

    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->longClickRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x:I

    .line 14
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y:I

    .line 15
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->page:I

    const/4 p2, 0x1

    .line 16
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x_size:I

    .line 17
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y_size:I

    .line 80
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->event_move:Z

    .line 81
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isThisTouch:Z

    .line 82
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isLongClick:Z

    .line 95
    new-instance p1, Lcom/hzbhd/common/ui/paged/CellChild$1;

    invoke-direct {p1, p0}, Lcom/hzbhd/common/ui/paged/CellChild$1;-><init>(Lcom/hzbhd/common/ui/paged/CellChild;)V

    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->longClickRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x:I

    .line 14
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y:I

    .line 15
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->page:I

    const/4 p2, 0x1

    .line 16
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x_size:I

    .line 17
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y_size:I

    .line 80
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->event_move:Z

    .line 81
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isThisTouch:Z

    .line 82
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isLongClick:Z

    .line 95
    new-instance p1, Lcom/hzbhd/common/ui/paged/CellChild$1;

    invoke-direct {p1, p0}, Lcom/hzbhd/common/ui/paged/CellChild$1;-><init>(Lcom/hzbhd/common/ui/paged/CellChild;)V

    iput-object p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->longClickRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/hzbhd/common/ui/paged/CellChild;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isLongClick:Z

    return p1
.end method


# virtual methods
.method public getPage()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->page:I

    return v0
.end method

.method public getPageX()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x:I

    return v0
.end method

.method public getPageY()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y:I

    return v0
.end method

.method public getXsize()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x_size:I

    return v0
.end method

.method public getYsize()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y_size:I

    return v0
.end method

.method public isCover(IIII)Z
    .locals 4

    .line 71
    iget v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x:I

    iget v1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x_size:I

    add-int/2addr v1, v0

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    add-int/2addr p1, p3

    const/4 p3, 0x1

    add-int/2addr v0, p3

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y:I

    iget v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y_size:I

    add-int/2addr v0, p1

    add-int/lit8 v1, p2, 0x1

    if-lt v0, v1, :cond_2

    add-int/2addr p2, p4

    add-int/2addr p1, p3

    if-ge p2, p1, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    return v3
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isThisTouch:Z

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isLongClick:Z

    .line 90
    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/paged/CellChild;->setPressed(Z)V

    .line 91
    iget-object v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->longClickRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/hzbhd/common/ui/paged/CellChild;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLongClick()V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 4

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    iput-boolean v1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isThisTouch:Z

    .line 112
    iput-boolean v1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->event_move:Z

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->downX:F

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->downY:F

    goto :goto_1

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isThisTouch:Z

    if-eqz v0, :cond_4

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/hzbhd/common/ui/paged/CellChild;->downX:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/hzbhd/common/ui/paged/CellChild;->downY:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_4

    .line 128
    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/CellChild;->setPressed(Z)V

    .line 130
    iput-boolean v2, p0, Lcom/hzbhd/common/ui/paged/CellChild;->event_move:Z

    .line 131
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->longClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/CellChild;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 119
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/hzbhd/common/ui/paged/CellChild;->setPressed(Z)V

    .line 120
    iget-object p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->longClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/paged/CellChild;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 121
    iget-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->event_move:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isThisTouch:Z

    if-eqz p1, :cond_4

    .line 122
    iget-boolean p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isLongClick:Z

    if-nez p1, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/paged/CellChild;->onClick()V

    .line 125
    :cond_3
    iput-boolean v1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->isThisTouch:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public setLoc(II)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x:I

    .line 38
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->page:I

    return-void
.end method

.method public setPressed(Z)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CellChild"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/hzbhd/common/ui/paged/CellChild;->x_size:I

    .line 43
    iput p2, p0, Lcom/hzbhd/common/ui/paged/CellChild;->y_size:I

    return-void
.end method
