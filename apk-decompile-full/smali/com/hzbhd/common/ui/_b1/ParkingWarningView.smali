.class public Lcom/hzbhd/common/ui/_b1/ParkingWarningView;
.super Landroid/widget/RelativeLayout;
.source "ParkingWarningView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/ui/_b1/ParkingWarningView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/ui/_b1/ParkingWarningView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/_b1/ParkingWarningView;->isShowB1bg()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/hzbhd/common/ui/R$layout;->__b1__parking_warning_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/hzbhd/common/ui/R$layout;->__b4__parking_warning_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/ui/_b1/ParkingWarningView;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public isShowB1bg()Z
    .locals 2

    .line 72
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "B1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method public showIvbg()V
    .locals 2

    .line 75
    sget v0, Lcom/hzbhd/common/ui/R$id;->iv_bg:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/ui/_b1/ParkingWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/hzbhd/common/ui/_b1/ParkingWarningView;->isShowB1bg()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
