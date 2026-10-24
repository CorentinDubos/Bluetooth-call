.class public Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;
.super Lcom/hzbhd/midwareproxy/colorview/ColorImageView;
.source "ClickAbleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected click_action:I

.field protected id_n:I

.field protected id_p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/hzbhd/midware/proxy/R$styleable;->img_attr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    sget p2, Lcom/hzbhd/midware/proxy/R$styleable;->img_attr_n:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->id_n:I

    .line 37
    sget p2, Lcom/hzbhd/midware/proxy/R$styleable;->img_attr_p:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->id_p:I

    .line 38
    sget p2, Lcom/hzbhd/midware/proxy/R$styleable;->img_attr_click_action:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->click_action:I

    .line 39
    sget p2, Lcom/hzbhd/midware/proxy/R$styleable;->img_attr_is_color_view:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->isColorImage:Z

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    invoke-virtual {p0, p0}, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->refreshBg()V

    .line 47
    invoke-super {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->drawableStateChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected refreshBg()V
    .locals 1

    .line 51
    iget v0, p0, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->id_n:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->id_p:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget v0, p0, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->id_p:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->setBackgroundResource(I)V

    goto :goto_0

    .line 57
    :cond_1
    iget v0, p0, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->id_n:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/colorview/ClickAbleView;->setBackgroundResource(I)V

    :cond_2
    :goto_0
    return-void
.end method
