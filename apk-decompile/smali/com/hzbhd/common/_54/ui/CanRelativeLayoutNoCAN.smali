.class public Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;
.super Landroid/widget/RelativeLayout;
.source "CanRelativeLayoutNoCAN.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/hzbhd/common/_54/ui/CanCircleAnim$OnProgressChangeListener;


# instance fields
.field private carinfo_chesu_n54:Lcom/hzbhd/common/_54/ui/CanCircleAnim;

.field private carinfo_zhuansu_n54:Lcom/hzbhd/common/_54/ui/CanCircleAnim;

.field private tv_chesu_n54:Landroid/widget/TextView;

.field private tv_zhuansu_n54:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    const/4 p4, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    sget p2, Lcom/hzbhd/common/ui/R$layout;->__54__pop_no_can:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 51
    sget p2, Lcom/hzbhd/common/ui/R$id;->tv_zhuansu_n54:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;->tv_zhuansu_n54:Landroid/widget/TextView;

    .line 52
    sget p2, Lcom/hzbhd/common/ui/R$id;->tv_chesu_n54:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;->tv_chesu_n54:Landroid/widget/TextView;

    .line 53
    sget p2, Lcom/hzbhd/common/ui/R$id;->carinfo_chesu_n54:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/hzbhd/common/_54/ui/CanCircleAnim;

    iput-object p2, p0, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;->carinfo_chesu_n54:Lcom/hzbhd/common/_54/ui/CanCircleAnim;

    .line 54
    sget p2, Lcom/hzbhd/common/ui/R$id;->carinfo_zhuansu_n54:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/hzbhd/common/_54/ui/CanCircleAnim;

    iput-object p2, p0, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;->carinfo_zhuansu_n54:Lcom/hzbhd/common/_54/ui/CanCircleAnim;

    .line 55
    iget-object p2, p0, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;->carinfo_chesu_n54:Lcom/hzbhd/common/_54/ui/CanCircleAnim;

    invoke-virtual {p2, p0}, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->setmOnProgressChangeListener(Lcom/hzbhd/common/_54/ui/CanCircleAnim$OnProgressChangeListener;)V

    .line 56
    iget-object p2, p0, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;->carinfo_zhuansu_n54:Lcom/hzbhd/common/_54/ui/CanCircleAnim;

    invoke-virtual {p2, p0}, Lcom/hzbhd/common/_54/ui/CanCircleAnim;->setmOnProgressChangeListener(Lcom/hzbhd/common/_54/ui/CanCircleAnim$OnProgressChangeListener;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public onProgressChanged(Landroid/view/View;I)V
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/hzbhd/common/ui/R$id;->carinfo_zhuansu_n54:I

    if-ne v0, v1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;->tv_zhuansu_n54:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/hzbhd/common/ui/R$id;->carinfo_chesu_n54:I

    if-ne p1, v0, :cond_1

    .line 98
    iget-object p1, p0, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;->tv_chesu_n54:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public test()V
    .locals 8

    .line 75
    sget v0, Lcom/hzbhd/common/ui/R$id;->icon_bg:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p0}, Lcom/hzbhd/common/_54/ui/CanRelativeLayoutNoCAN;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/hzbhd/common/ui/R$drawable;->car_icon:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 80
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 84
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {v4, v7, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 85
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 87
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 90
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
