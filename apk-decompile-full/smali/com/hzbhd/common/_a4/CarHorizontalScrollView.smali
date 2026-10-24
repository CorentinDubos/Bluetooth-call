.class public Lcom/hzbhd/common/_a4/CarHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "CarHorizontalScrollView.java"


# static fields
.field private static final MOVE_LIMITATION:F

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBaseScrollX:I

.field private mLastMotionX:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScrollX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0xa

    .line 22
    iput p2, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mScrollX:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/16 p2, 0x244

    .line 41
    iput p2, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mScreenWidth:I

    .line 42
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mScreenHeight:I

    .line 43
    sget-object p1, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AppsHorizontalScrollView: width-->"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mScreenWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private baseSmoothScrollTo(I)V
    .locals 1

    .line 97
    iget v0, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mBaseScrollX:I

    add-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method private getBaseScrollX()I
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mBaseScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 128
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->getBaseScrollX()I

    move-result p1

    .line 106
    sget-object v0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v0, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mScrollX:I

    if-le p1, v0, :cond_1

    .line 109
    iget p1, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mScreenWidth:I

    invoke-direct {p0, p1}, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->baseSmoothScrollTo(I)V

    .line 110
    iget p1, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mBaseScrollX:I

    iget v0, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mScreenWidth:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mBaseScrollX:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    if-lez p1, :cond_2

    .line 114
    invoke-direct {p0, v2}, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->baseSmoothScrollTo(I)V

    goto :goto_0

    :cond_2
    neg-int v0, v0

    if-le p1, v0, :cond_3

    .line 118
    invoke-direct {p0, v2}, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->baseSmoothScrollTo(I)V

    goto :goto_0

    .line 122
    :cond_3
    iget p1, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mScreenWidth:I

    neg-int p1, p1

    invoke-direct {p0, p1}, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->baseSmoothScrollTo(I)V

    .line 123
    iget p1, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mBaseScrollX:I

    iget v0, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mScreenWidth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/common/_a4/CarHorizontalScrollView;->mBaseScrollX:I

    :goto_0
    return v1
.end method
