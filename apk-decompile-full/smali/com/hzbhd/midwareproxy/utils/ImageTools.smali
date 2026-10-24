.class public Lcom/hzbhd/midwareproxy/utils/ImageTools;
.super Ljava/lang/Object;
.source "ImageTools.java"


# static fields
.field public static final BOTTOM:I = 0x4

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field public static final TOP:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/hzbhd/midwareproxy/utils/ImageTools;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ImageTools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BitmapToDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 463
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    .line 335
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 336
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 337
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static bitmapToDrawableByBD(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 309
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static bytesToBimap([B)Landroid/graphics/Bitmap;
    .locals 3

    .line 320
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ImageTools;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 322
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createBitmapBySize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 288
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createBitmapForFotoMix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 246
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 247
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    if-nez p2, :cond_3

    add-int/2addr v1, v3

    if-le v2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    .line 252
    :goto_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 254
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v2, v3

    .line 255
    invoke-virtual {v1, p0, v2, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 256
    invoke-virtual {v1, p1, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    move-object v0, p2

    goto :goto_3

    :cond_3
    const/4 v6, 0x1

    if-ne p2, v6, :cond_5

    add-int/2addr v3, v1

    if-le v2, v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    .line 258
    :goto_2
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 260
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 261
    invoke-virtual {v2, p0, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    int-to-float p0, v1

    .line 262
    invoke-virtual {v2, p1, p0, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    const/4 v6, 0x3

    if-ne p2, v6, :cond_7

    if-le v3, v1, :cond_6

    move v1, v3

    :cond_6
    add-int/2addr v2, v4

    .line 264
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 266
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v2, v4

    .line 267
    invoke-virtual {v1, p0, v5, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 268
    invoke-virtual {v1, p1, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_7
    const/4 v6, 0x4

    if-ne p2, v6, :cond_9

    if-le v3, v1, :cond_8

    move v1, v3

    :cond_8
    add-int/2addr v4, v2

    .line 270
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 272
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 273
    invoke-virtual {v1, p0, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    int-to-float p0, v2

    .line 274
    invoke-virtual {v1, p1, v5, p0, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_9
    :goto_3
    return-object v0
.end method

.method public static createBitmapForWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 201
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 205
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 206
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    .line 208
    invoke-virtual {v6, p0, v7, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x5

    int-to-float p0, v1

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x5

    int-to-float v1, v2

    .line 210
    invoke-virtual {v6, p1, p0, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 p0, 0x1f

    .line 212
    invoke-virtual {v6, p0}, Landroid/graphics/Canvas;->save(I)I

    .line 214
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    return-object v5
.end method

.method public static createReflectionImageWithOrigin(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 23

    .line 425
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 426
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 428
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 429
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 431
    div-int/lit8 v9, v8, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v2, v9

    move v3, v7

    move v4, v9

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    add-int/2addr v9, v8

    .line 434
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 437
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p0

    .line 438
    invoke-virtual {v2, v5, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 439
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    int-to-float v6, v8

    int-to-float v7, v7

    add-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    const/4 v10, 0x0

    move-object v9, v2

    move v11, v6

    move v12, v7

    move v13, v8

    .line 440
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 442
    invoke-virtual {v2, v0, v3, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 444
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 445
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 446
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const v20, 0x70ffffff

    const v21, 0xffffff

    move-object v15, v0

    move/from16 v17, v3

    move/from16 v19, v4

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 448
    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 450
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 452
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-float v13, v0

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static createThumnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    .line 488
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 489
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 491
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 493
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 496
    sget-object v2, Lcom/hzbhd/midwareproxy/utils/ImageTools;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pic ,options.outWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " options.outHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v2, p1, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v2, p2, :cond_0

    move p1, v1

    goto :goto_0

    .line 501
    :cond_0
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v2, v3, :cond_1

    .line 502
    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr p2, p1

    int-to-float p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    .line 504
    :cond_1
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr p1, p2

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_0
    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, p1

    .line 509
    :goto_1
    sget-object p1, Lcom/hzbhd/midwareproxy/utils/ImageTools;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pic,be="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 513
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 515
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 516
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 518
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ImageTools;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pic ,w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " h="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 383
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 384
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 387
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 389
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 391
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 393
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 394
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 396
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public static drawableToBitmapByBD(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 298
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 299
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapFromResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 344
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 403
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 404
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 405
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 406
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 408
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 409
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 410
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    .line 411
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 412
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v1, -0xbdbdbe

    .line 413
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    invoke-virtual {v3, v0, p1, p1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 415
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 416
    invoke-virtual {v3, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method public static varargs potoMix(I[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 224
    array-length v0, p1

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 227
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 228
    aget-object p0, p1, v1

    return-object p0

    .line 230
    :cond_1
    aget-object v0, p1, v1

    .line 232
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_2

    .line 233
    aget-object v1, p1, v2

    invoke-static {v0, v1, p0}, Lcom/hzbhd/midwareproxy/utils/ImageTools;->createBitmapForFotoMix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static saveBefore(Ljava/lang/String;)V
    .locals 5

    .line 126
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 127
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 129
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 130
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 132
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v1, 0x2

    .line 135
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 137
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 140
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    invoke-static {v0, p0}, Lcom/hzbhd/midwareproxy/utils/ImageTools;->saveJPGE_After(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static saveJPGE_After(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .line 176
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 179
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 181
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static savePNG_After(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 158
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 159
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 160
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 51
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 54
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 55
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    .line 56
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 57
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 58
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 59
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static toGrayscale(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/ImageTools;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/ImageTools;->toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 88
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 89
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 88
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 92
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 93
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float p1, p1

    const/4 v5, 0x1

    .line 96
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xbdbdbe

    .line 98
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 100
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 116
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p0, p1}, Lcom/hzbhd/midwareproxy/utils/ImageTools;->toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 369
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 370
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 371
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    .line 374
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 375
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 471
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 472
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 474
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/ImageTools;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p1

    int-to-float p1, v3

    div-float/2addr p0, p1

    int-to-float p1, p2

    int-to-float p2, v4

    div-float/2addr p1, p2

    .line 481
    invoke-virtual {v5, p0, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 483
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 485
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method


# virtual methods
.method public Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    .line 351
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 352
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 353
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public Bytes2Bimap([B)Landroid/graphics/Bitmap;
    .locals 2

    .line 359
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 360
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
