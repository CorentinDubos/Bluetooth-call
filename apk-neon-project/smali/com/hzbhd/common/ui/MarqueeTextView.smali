.class public Lcom/hzbhd/common/ui/MarqueeTextView;
.super Landroid/widget/RelativeLayout;
.source "MarqueeTextView.java"


# static fields
.field private static final MSG_START_MARQUEE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MarqueeTextView"


# instance fields
.field private final DELAY_FOR_MARQUEE:I

.field private final DISTANCE_HEAD_AND_TAIL_PERCENT:I

.field private final MARQUEE_SPEED_PX_PER_SEC:I

.field private mHander:Landroid/os/Handler;

.field private mHeadTv:Landroid/widget/TextView;

.field private mMarqueeText:Ljava/lang/String;

.field private mMarqueeTextColor:Landroid/content/res/ColorStateList;

.field private mMarqueeTextLength:I

.field private mMarqueeTextSize:I

.field private mMarqueeWidth:I

.field private mTailTv:Landroid/widget/TextView;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/ui/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/ui/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 43
    iput p3, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeTextSize:I

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeText:Ljava/lang/String;

    const/16 v1, 0xc8

    .line 45
    iput v1, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeWidth:I

    .line 46
    iput p3, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeTextLength:I

    .line 47
    iput-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeTextColor:Landroid/content/res/ColorStateList;

    .line 49
    iput-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    .line 50
    iput-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mTailTv:Landroid/widget/TextView;

    const/16 v1, 0xbb8

    .line 52
    iput v1, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->DELAY_FOR_MARQUEE:I

    const/16 v1, 0x14

    .line 53
    iput v1, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->MARQUEE_SPEED_PX_PER_SEC:I

    const/16 v1, 0x32

    .line 54
    iput v1, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->DISTANCE_HEAD_AND_TAIL_PERCENT:I

    .line 114
    new-instance v2, Lcom/hzbhd/common/ui/MarqueeTextView$1;

    invoke-direct {v2, p0}, Lcom/hzbhd/common/ui/MarqueeTextView$1;-><init>(Lcom/hzbhd/common/ui/MarqueeTextView;)V

    iput-object v2, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHander:Landroid/os/Handler;

    .line 199
    iput-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 79
    sget-object v0, Lcom/hzbhd/common/ui/R$styleable;->marquee_text_view:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    sget v2, Lcom/hzbhd/common/ui/R$styleable;->marquee_text_view_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeText:Ljava/lang/String;

    .line 81
    sget v2, Lcom/hzbhd/common/ui/R$styleable;->marquee_text_view_textSize:I

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeTextSize:I

    .line 82
    sget v2, Lcom/hzbhd/common/ui/R$styleable;->marquee_text_view_textColor2:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeTextColor:Landroid/content/res/ColorStateList;

    .line 83
    sget v2, Lcom/hzbhd/common/ui/R$styleable;->marquee_text_view_marquee_width:I

    iget v3, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeWidth:I

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    .line 87
    sget v2, Lcom/hzbhd/common/ui/R$id;->tv_marquee_head:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 88
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 89
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeTextColor:Landroid/content/res/ColorStateList;

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 91
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mTailTv:Landroid/widget/TextView;

    .line 92
    sget p1, Lcom/hzbhd/common/ui/R$id;->tv_marquee_tail:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setId(I)V

    .line 93
    iget-object p1, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mTailTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 94
    iget-object p1, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mTailTv:Landroid/widget/TextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 95
    iget-object p1, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mTailTv:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeTextColor:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 97
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/common/ui/MarqueeTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x1

    .line 102
    sget v0, Lcom/hzbhd/common/ui/R$id;->tv_marquee_head:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 103
    invoke-virtual {p1, v1, p3, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 104
    iget-object p2, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mTailTv:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Lcom/hzbhd/common/ui/MarqueeTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object p1, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget p1, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeTextSize:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/MarqueeTextView;->setTextSize(F)V

    .line 109
    invoke-direct {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->calcMarqueeTextStringLength()V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/common/ui/MarqueeTextView;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->canMarquee()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/hzbhd/common/ui/MarqueeTextView;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mTailTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hzbhd/common/ui/MarqueeTextView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->createAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/hzbhd/common/ui/MarqueeTextView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private calcMarqueeTextStringLength()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeTextLength:I

    return-void
.end method

.method private canMarquee()Z
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 178
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private createAnimation()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getDurationSecond(Landroid/widget/TextView;)F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 203
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 204
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/hzbhd/common/ui/MarqueeTextView;->getScrollDistance(Landroid/widget/TextView;)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string/jumbo v2, "scrollX"

    .line 203
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    float-to-long v2, v0

    .line 204
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 205
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private getDurationSecond(Landroid/widget/TextView;)F
    .locals 1

    .line 187
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    return p1
.end method

.method private getScrollDistance(Landroid/widget/TextView;)I
    .locals 2

    .line 193
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 195
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x32

    .line 196
    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4

    .line 210
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    const/4 p2, 0x0

    move p3, p2

    move p5, p3

    :goto_0
    if-ge p3, p1, :cond_2

    .line 215
    invoke-virtual {p0, p3}, Lcom/hzbhd/common/ui/MarqueeTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 219
    iget v3, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeTextLength:I

    if-ge v3, p4, :cond_0

    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 220
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 222
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :goto_1
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getPaddingTop()I

    move-result v2

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p5

    add-int/2addr v1, v2

    invoke-virtual {v0, p5, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 227
    iget v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeTextLength:I

    mul-int/lit8 v1, p4, 0x32

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/2addr p5, v0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 240
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 242
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 243
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 246
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 247
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 249
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/high16 v7, -0x80000000

    if-ge v5, v4, :cond_3

    .line 251
    invoke-virtual {p0, v5}, Lcom/hzbhd/common/ui/MarqueeTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 255
    iget v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, -0x2

    if-ne v9, v11, :cond_0

    move v9, v7

    goto :goto_1

    :cond_0
    move v9, v10

    .line 262
    :goto_1
    iget v8, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ne v8, v11, :cond_1

    goto :goto_2

    :cond_1
    move v7, v10

    :goto_2
    if-nez v5, :cond_2

    .line 269
    iget v8, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mMarqueeTextLength:I

    goto :goto_3

    .line 271
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    :goto_3
    sub-int v10, v8, v3

    .line 273
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v10, p2, v2

    .line 274
    invoke-static {v10, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 277
    invoke-virtual {v0, v9, v7}, Landroid/view/View;->measure(II)V

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    move v0, v8

    goto :goto_0

    :cond_3
    if-ne v1, v7, :cond_4

    add-int p2, v6, v2

    .line 283
    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/hzbhd/common/ui/MarqueeTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mTailTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-direct {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->calcMarqueeTextStringLength()V

    .line 155
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->requestLayout()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mTailTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mTailTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    invoke-direct {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->calcMarqueeTextStringLength()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 171
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mTailTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 172
    invoke-direct {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->calcMarqueeTextStringLength()V

    return-void
.end method

.method public startMarquee()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 132
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHander:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHander:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopMarquee()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 143
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/hzbhd/common/ui/MarqueeTextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mHeadTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/hzbhd/common/ui/MarqueeTextView;->mTailTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
