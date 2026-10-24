.class public Lcom/hzbhd/bluetooth/widget/FY1ImageView;
.super Landroid/widget/ImageView;
.source "FY1ImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/bluetooth/widget/FY1ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/bluetooth/widget/FY1ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/bluetooth/widget/FY1ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/widget/FY1ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 31
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    sget-object p2, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->FY1_BT_LOGO_SELECT:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {p2}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedInt(Ljava/lang/String;)I

    move-result p1

    .line 32
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object p2

    const-string p3, "J2"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    if-eqz p1, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f0808c2

    .line 42
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/widget/FY1ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const p1, 0x7f0808c3

    .line 39
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/widget/FY1ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    const p1, 0x7f0808c0

    .line 36
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/widget/FY1ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
