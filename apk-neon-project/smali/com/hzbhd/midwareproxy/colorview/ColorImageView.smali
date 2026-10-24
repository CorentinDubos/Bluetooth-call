.class public Lcom/hzbhd/midwareproxy/colorview/ColorImageView;
.super Landroid/widget/ImageView;
.source "ColorImageView.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/colorview/ColorUtil$ColorViewInterface;


# instance fields
.field protected isColorImage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->isColorImage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->isColorImage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->isColorImage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->isColorImage:Z

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .line 60
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 61
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->isColorImage:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->isPressed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->viewStateChange(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 30
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->isColorImage:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->addColorInterface(Lcom/hzbhd/midwareproxy/colorview/ColorUtil$ColorViewInterface;)V

    :cond_0
    return-void
.end method

.method public onColorChange()V
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->isColorImage:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->isPressed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->viewStateChange(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 38
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->isColorImage:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->removeColorInterface(Lcom/hzbhd/midwareproxy/colorview/ColorUtil$ColorViewInterface;)V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->isColorImage:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorImageView;->isPressed()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->viewStateChange(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method
