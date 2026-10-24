.class public Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "MultiColorRelativeLayout.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;


# instance fields
.field private final DefaultMode:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mColorMode:Ljava/lang/String;

.field mColors:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    const-class p3, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->TAG:Ljava/lang/String;

    const-string p3, ""

    .line 21
    iput-object p3, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColors:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColorMode:Ljava/lang/String;

    const-string p3, "1"

    .line 24
    iput-object p3, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->DefaultMode:Ljava/lang/String;

    .line 25
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->getPointSaveColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColors:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->refreshBg()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 84
    sget-object v0, Lcom/hzbhd/midware/proxy/R$styleable;->MultiColorStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 85
    sget p2, Lcom/hzbhd/midware/proxy/R$styleable;->MultiColorStyle_color_mode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColorMode:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColorMode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "1"

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColorMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColorMode:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 92
    :cond_0
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColorMode:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ColorChange(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColors:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->refreshBg()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 77
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColors:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->refreshBg()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 51
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->initRegisterContentObserver(Landroid/content/Context;Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 57
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->removeRegisterContentObserver(Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;)V

    return-void
.end method

.method protected refreshBg()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColorMode:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColors:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->BackGroundChangeColor(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColors:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->invalidate()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->mColors:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorRelativeLayout;->refreshBg()V

    :cond_0
    return-void
.end method
