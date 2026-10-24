.class public Lcom/hzbhd/midwareproxy/colorview/ColorTextView;
.super Landroid/widget/TextView;
.source "ColorTextView.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/colorview/ColorUtil$ColorViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .line 54
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 55
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorTextView;->isPressed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->viewStateChange(Landroid/graphics/drawable/Drawable;Z)V

    .line 58
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorTextView;->isPressed()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->textviewStateCahnge(Landroid/widget/TextView;Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 28
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 29
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->addColorInterface(Lcom/hzbhd/midwareproxy/colorview/ColorUtil$ColorViewInterface;)V

    return-void
.end method

.method public onColorChange()V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorTextView;->isPressed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->viewStateChange(Landroid/graphics/drawable/Drawable;Z)V

    .line 43
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorTextView;->isPressed()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->textviewStateCahnge(Landroid/widget/TextView;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 34
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 35
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->removeColorInterface(Lcom/hzbhd/midwareproxy/colorview/ColorUtil$ColorViewInterface;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorTextView;->isPressed()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->viewStateChange(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method
