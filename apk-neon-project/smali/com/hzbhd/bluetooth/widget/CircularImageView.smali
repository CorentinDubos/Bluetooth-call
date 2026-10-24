.class public Lcom/hzbhd/bluetooth/widget/CircularImageView;
.super Landroid/widget/ImageView;
.source "CircularImageView.java"


# instance fields
.field private borderWidth:I

.field private canvasSize:I

.field private hasBorder:Z

.field private hasSelector:Z

.field private image:Landroid/graphics/Bitmap;

.field private isSelected:Z

.field private paint:Landroid/graphics/Paint;

.field private paintBorder:Landroid/graphics/Paint;

.field private paintSelectorBorder:Landroid/graphics/Paint;

.field private selectorFilter:Landroid/graphics/ColorFilter;

.field private selectorStrokeWidth:I

.field private shader:Landroid/graphics/BitmapShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04000c

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paintSelectorBorder:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    sget-object v0, Lcom/hzbhd/bluetooth/R$styleable;->CircularImageView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 78
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->hasBorder:Z

    const/4 p3, 0x3

    .line 79
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->hasSelector:Z

    .line 82
    iget-boolean p3, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->hasBorder:Z

    const v0, 0x7f070cc4

    if-eqz p3, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/4 v3, 0x2

    .line 84
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->setBorderWidth(I)V

    const/4 p3, -0x1

    .line 85
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->setBorderColor(I)V

    .line 89
    :cond_0
    iget-boolean p3, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->hasSelector:Z

    if-eqz p3, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    const/4 p1, 0x4

    .line 91
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->setSelectorColor(I)V

    :cond_1
    const/4 p1, 0x7

    .line 97
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->addShadow()V

    .line 101
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureHeight(I)I
    .locals 2

    .line 311
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 312
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    iget p1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    :goto_0
    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private measureWidth(I)I
    .locals 2

    .line 289
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 290
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    iget p1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    :goto_0
    return p1
.end method


# virtual methods
.method public addShadow()V
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 172
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 233
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->isClickable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 234
    iput-boolean v1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->isSelected:Z

    .line 235
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    iput-boolean v1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->isSelected:Z

    goto :goto_0

    .line 241
    :cond_2
    iput-boolean v2, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->isSelected:Z

    .line 252
    :goto_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->invalidate()V

    .line 253
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 339
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 340
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 344
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 345
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 346
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 347
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 272
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 273
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->image:Landroid/graphics/Bitmap;

    .line 274
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->shader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    if-lez v0, :cond_1

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->refreshBitmapShader()V

    :cond_1
    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->invalidate(IIII)V

    .line 265
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->image:Landroid/graphics/Bitmap;

    .line 266
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->shader:Landroid/graphics/BitmapShader;

    if-nez p1, :cond_0

    iget p1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    if-lez p1, :cond_1

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->refreshBitmapShader()V

    :cond_1
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    .line 257
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidate(Landroid/graphics/Rect;)V

    .line 258
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->image:Landroid/graphics/Bitmap;

    .line 259
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->shader:Landroid/graphics/BitmapShader;

    if-nez p1, :cond_0

    iget p1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    if-lez p1, :cond_1

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->refreshBitmapShader()V

    :cond_1
    return-void
.end method

.method public isSelected()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->isSelected:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 188
    :cond_1
    iget v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    if-ge v1, v2, :cond_2

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    .line 195
    :cond_2
    iget v1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    if-eq v0, v1, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->refreshBitmapShader()V

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    .line 205
    iget v1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    div-int/lit8 v2, v1, 0x2

    .line 208
    iget-boolean v3, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->hasSelector:Z

    const/high16 v4, 0x40800000    # 4.0f

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->isSelected:Z

    if-eqz v3, :cond_4

    .line 209
    iget v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->selectorStrokeWidth:I

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    .line 210
    div-int/lit8 v1, v1, 0x2

    .line 212
    iget-object v3, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->selectorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    add-int v3, v1, v0

    int-to-float v3, v3

    .line 213
    iget v5, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    int-to-float v2, v5

    sub-float/2addr v2, v4

    iget-object v5, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paintSelectorBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v3, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 215
    :cond_4
    iget-boolean v1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->hasBorder:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 216
    iget v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->borderWidth:I

    .line 217
    iget v1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 219
    iget-object v5, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    add-int v3, v1, v0

    int-to-float v3, v3

    .line 220
    iget v5, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    int-to-float v2, v5

    sub-float/2addr v2, v4

    iget-object v5, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v3, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    move v2, v1

    goto :goto_1

    .line 223
    :cond_5
    iget-object v1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_1
    add-int/2addr v2, v0

    int-to-float v1, v2

    .line 226
    iget v2, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    sub-float/2addr v0, v4

    iget-object v2, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->measureWidth(I)I

    move-result p1

    .line 282
    invoke-direct {p0, p2}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->measureHeight(I)I

    move-result p2

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public refreshBitmapShader()V
    .locals 4

    .line 358
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->image:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->canvasSize:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->shader:Landroid/graphics/BitmapShader;

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->borderWidth:I

    .line 112
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->requestLayout()V

    .line 113
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->invalidate()V

    return-void
.end method

.method public setSelectorColor(I)V
    .locals 2

    .line 136
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->selectorFilter:Landroid/graphics/ColorFilter;

    .line 137
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->invalidate()V

    return-void
.end method

.method public setSelectorStrokeColor(I)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->paintSelectorBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->invalidate()V

    return-void
.end method

.method public setSelectorStrokeWidth(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/hzbhd/bluetooth/widget/CircularImageView;->selectorStrokeWidth:I

    .line 149
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->requestLayout()V

    .line 150
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->invalidate()V

    return-void
.end method
