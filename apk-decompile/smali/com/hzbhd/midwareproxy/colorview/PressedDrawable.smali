.class public Lcom/hzbhd/midwareproxy/colorview/PressedDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "PressedDrawable.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 4

    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 15
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Lcom/hzbhd/midwareproxy/colorview/PressedDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p3, v0, [I

    const v0, -0x10100a7

    aput v0, p3, v2

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/hzbhd/midwareproxy/colorview/PressedDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 25
    invoke-virtual {p0, v1, p2}, Lcom/hzbhd/midwareproxy/colorview/PressedDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v0, [I

    const v0, -0x10100a7

    aput v0, p2, v2

    .line 26
    invoke-virtual {p0, p2, p1}, Lcom/hzbhd/midwareproxy/colorview/PressedDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method
