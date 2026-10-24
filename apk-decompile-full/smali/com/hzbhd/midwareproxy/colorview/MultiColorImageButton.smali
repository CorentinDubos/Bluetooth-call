.class public Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;
.super Landroid/widget/ImageButton;
.source "MultiColorImageButton.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;


# instance fields
.field private final DefaultMode:Ljava/lang/String;

.field private mColorMode:Ljava/lang/String;

.field mColors:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsChangen:Z

.field private mIsChangep:Z

.field private mMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p3, ""

    .line 14
    iput-object p3, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColors:Ljava/lang/String;

    const/4 p4, 0x0

    .line 16
    iput-boolean p4, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mIsChangen:Z

    .line 17
    iput-boolean p4, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mIsChangep:Z

    .line 18
    iput-object p3, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColorMode:Ljava/lang/String;

    const-string p3, "1"

    .line 19
    iput-object p3, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->DefaultMode:Ljava/lang/String;

    .line 20
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->getPointSaveColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColors:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->refreshBg()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/hzbhd/midware/proxy/R$styleable;->MultiColorStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    sget p2, Lcom/hzbhd/midware/proxy/R$styleable;->MultiColorStyle_color_mode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColorMode:Ljava/lang/String;

    .line 46
    sget p2, Lcom/hzbhd/midware/proxy/R$styleable;->MultiColorStyle_mcs_n_enable:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mIsChangen:Z

    .line 47
    sget p2, Lcom/hzbhd/midware/proxy/R$styleable;->MultiColorStyle_mcs_p_enable:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mIsChangep:Z

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColorMode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "1"

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColorMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColorMode:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 54
    :cond_0
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColorMode:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshBg()V
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->isPressed()Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_1

    .line 86
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mIsChangep:Z

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColorMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColors:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->BackGroundChangeColor(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColors:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mIsChangen:Z

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColorMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColors:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->BackGroundChangeColor(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColors:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 100
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->invalidate()V

    return-void
.end method


# virtual methods
.method public ColorChange(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mColors:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->refreshBg()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 72
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 73
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->refreshBg()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 61
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/colorview/MultiColorImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->initRegisterContentObserver(Landroid/content/Context;Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 67
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->removeRegisterContentObserver(Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;)V

    return-void
.end method
