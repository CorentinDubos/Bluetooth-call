.class public Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil$ForyouToast;
.super Ljava/lang/Object;
.source "MpegUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForyouToast"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mShow(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 258
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 259
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 260
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0xc8

    .line 261
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setWidth(I)V

    const/16 p0, 0x78

    .line 262
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setHeight(I)V

    const/16 p0, 0x11

    .line 263
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, -0x1000000

    .line 264
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 p1, 0x1

    .line 265
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    const/4 p1, 0x0

    .line 266
    invoke-virtual {v0, p0, p1, p1}, Landroid/widget/Toast;->setGravity(III)V

    .line 267
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 268
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 1

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil$ForyouToast;->mShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 254
    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/mpeg/util/MpegUtil$ForyouToast;->mShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
