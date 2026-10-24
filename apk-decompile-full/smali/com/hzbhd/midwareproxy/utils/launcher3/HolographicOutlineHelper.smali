.class public Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field private static sInstance:Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;


# instance fields
.field private final mBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p1, v1, v0}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 56
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, v1, v0}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 58
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v0}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 60
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p1, v1, v0}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 62
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 63
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 65
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 67
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 68
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;
    .locals 1

    .line 72
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->sInstance:Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->sInstance:Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;

    .line 75
    :cond_0
    sget-object p0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->sInstance:Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;

    return-object p0
.end method


# virtual methods
.method public applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V

    return-void
.end method

.method public applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const/4 v8, 0x0

    if-eqz p5, :cond_2

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v2, v1, [I

    const/4 v11, 0x0

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v9, p1

    move-object v10, v2

    .line 93
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v3, v8

    :goto_0
    if-ge v3, v1, :cond_1

    .line 96
    aget v4, v2, v3

    ushr-int/lit8 v4, v4, 0x18

    const/16 v5, 0xbc

    if-ge v4, v5, :cond_0

    .line 98
    aput v8, v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v9, p1

    move-object v10, v2

    .line 101
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 104
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 107
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 109
    iget-object v2, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v10}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 111
    iget-object v2, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-array v12, v1, [I

    .line 113
    iget-object v2, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 116
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/high16 v2, -0x1000000

    .line 117
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 118
    iget-object v2, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-array v14, v1, [I

    .line 120
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v14}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 123
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    aget v1, v14, v8

    neg-int v1, v1

    int-to-float v1, v1

    const/16 v16, 0x1

    aget v2, v14, v16

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 126
    aget v1, v14, v8

    neg-int v1, v1

    int-to-float v4, v1

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    aget v1, v14, v16

    neg-int v1, v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v1, p1

    .line 132
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 134
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    aget v1, v14, v8

    int-to-float v1, v1

    aget v2, v14, v16

    int-to-float v2, v2

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    aget v1, v10, v8

    int-to-float v1, v1

    aget v2, v10, v16

    int-to-float v2, v2

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    iget-object v1, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    aget v1, v12, v8

    int-to-float v1, v1

    aget v2, v12, v16

    int-to-float v2, v2

    iget-object v3, v0, Lcom/hzbhd/midwareproxy/utils/launcher3/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
