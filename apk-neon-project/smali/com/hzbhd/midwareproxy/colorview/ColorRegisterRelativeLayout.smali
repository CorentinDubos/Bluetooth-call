.class public Lcom/hzbhd/midwareproxy/colorview/ColorRegisterRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ColorRegisterRelativeLayout.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/midwareproxy/colorview/ColorRegisterRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/midwareproxy/colorview/ColorRegisterRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/midwareproxy/colorview/ColorRegisterRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->getPointSaveColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 29
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorRegisterRelativeLayout;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object p1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p3, p4, v0, p2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->setCurrColor(IIII)V

    .line 31
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/colorview/ColorRegisterRelativeLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public ColorChange(Ljava/lang/String;)V
    .locals 4

    .line 36
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->setCurrColor(IIII)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 42
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorRegisterRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->initRegisterContentObserver(Landroid/content/Context;Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 48
    invoke-static {}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->getInstance()Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->removeRegisterContentObserver(Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;)V

    return-void
.end method
